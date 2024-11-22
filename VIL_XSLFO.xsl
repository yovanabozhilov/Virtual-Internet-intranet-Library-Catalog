<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="xml" version="1.0" indent="yes"/>
<xsl:template match="/">
	<fo:root>
	
		<fo:layout-master-set>
			<fo:simple-page-master page-height="297mm" page-width="210mm" margin="5mm 25mm 5mm 25mm" master-name="template">
				<fo:region-body margin="10mm 0mm 10mm 0mm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
		
<!--===========================Title===============================-->
		
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			  <fo:block text-align="center" border="1pt" border-style="solid"> 
			  </fo:block>
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm" >
					<fo:block position ="absolute" text-align ="center" font-weight="bold" margin-left="2cm"
					font-family="Bodoni MT" font-size="20pt" padding-before="30mm" color="black" >
						<fo:block margin-bottom="0mm">
							CATALOGUE
						</fo:block>
					</fo:block>	
					<fo:block position ="absolute" text-align ="center" font-weight="bold" margin-left="2cm"
				    font-family="Bodoni MT" font-size="48pt" padding-before="50mm" color="black" >				
						<fo:block margin-bottom="50mm">
							Virtual Internet Library
						</fo:block>
						<fo:external-graphic src="url('images/image1.jpg')" text-align ="center" padding-after="10mm" margin-bottom="30mm" 
					    content-height="400" content-width="580" ></fo:external-graphic>
					</fo:block>
				</fo:block-container>
			  <fo:block text-align="center" border="1pt" border-style="solid"> 
	          </fo:block>
			</fo:flow>
		</fo:page-sequence>

<!--===========================Великият Гетсби===============================-->
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			   <fo:block text-align="center" border="1pt" border-style="solid"> 
			   </fo:block>
				<fo:block-container position="absolute" top="-1.8cm" left="-2.5cm">
					<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm"
								font-family="Calibri" font-size="40pt" color="black">
						<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
					   <fo:external-graphic src="{unparsed-entity-uri(/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/image/@href)}" ></fo:external-graphic>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Вид продукт:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/typeName"/> 
						</fo:inline>
					</fo:block> 
					
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Автор:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/author"/> 
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Жанр:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/genre"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Година на публикуване:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/yearOfPublication"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Издателство:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/publisher"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Език:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/language"/>
						</fo:inline>
					</fo:block>
				
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Брой страници:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/numOfPages"/>
						</fo:inline>
					</fo:block>

					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Описание:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='GreatGatsby']/description"/>
						</fo:inline>
					</fo:block>

				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>					
		
<!--===========================Сидхарта===============================-->
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			   <fo:block text-align="center" border="1pt" border-style="solid"> 
			   </fo:block>			
				<fo:block-container position="absolute" top="-1.8cm" left="-2.5cm">
					<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm"
								font-family="Calibri" font-size="40pt" color="black">
						<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
					   <fo:external-graphic src="{unparsed-entity-uri(/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/image/@href)}" ></fo:external-graphic>
					</fo:block>
					
										<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Вид продукт:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/typeName"/> 
						</fo:inline>
					</fo:block> 
					
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Автор:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/author"/> 
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Жанр:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/genre"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Година на публикуване:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/yearOfPublication"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Издателство:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/publisher"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Език:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/language"/>
						</fo:inline>
					</fo:block>
				
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Брой страници:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/numOfPages"/>
						</fo:inline>
					</fo:block>

					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Описание:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Sidharta']/description"/>
						</fo:inline>
					</fo:block>

				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>	

<!--===========================Българска наука===============================-->
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			   <fo:block text-align="center" border="1pt" border-style="solid"> 
			   </fo:block>			
				<fo:block-container position="absolute" top="-1.8cm" left="-2.5cm">
					<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm"
								font-family="Calibri" font-size="40pt" color="black">
						<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
					   <fo:external-graphic src="{unparsed-entity-uri(/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/image/@href)}" ></fo:external-graphic>
					</fo:block>
					
										<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Вид продукт:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/typeName"/> 
						</fo:inline>
					</fo:block> 
					
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Автор:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/author"/> 
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Жанр:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/genre"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Година на публикуване:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/yearOfPublication"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Издателство:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/publisher"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Език:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/language"/>
						</fo:inline>
					</fo:block>

					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Брой:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/number"/>
						</fo:inline>
					</fo:block>

					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Описание:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='Bulgarian']/description"/>
						</fo:inline>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>	

<!--===========================Alive My Soundtrack===============================-->
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			   <fo:block text-align="center" border="1pt" border-style="solid"> 
			   </fo:block>			
				<fo:block-container position="absolute" top="-1.8cm" left="-2.5cm">
					<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm"
								font-family="Calibri" font-size="40pt" color="black">
						<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='AliveMySoundtrack']/name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
					   <fo:external-graphic src="{unparsed-entity-uri(/catalogue/libraryResourceList/libraryResource[@id='AliveMySoundtrack']/image/@href)}" ></fo:external-graphic>
					</fo:block>
					
										<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Вид продукт:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='AliveMySoundtrack']/typeName"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Автор:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='AliveMySoundtrack']/performer"/> 
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Изпълнител:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='AliveMySoundtrack']/yearOfPublication"/>
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Жанр:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='AliveMySoundtrack']/genre"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Година на публикуване:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='AliveMySoundtrack']/yearOfPublication"/>
						</fo:inline>
					</fo:block>
				
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Описание:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='AliveMySoundtrack']/description"/>
						</fo:inline>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>	

<!--===========================Def Leppard Drastic Symphonies Tape===============================-->
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			   <fo:block text-align="center" border="1pt" border-style="solid"> 
			   </fo:block>			
				<fo:block-container position="absolute" top="-1.8cm" left="-2.5cm">
					<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm"
								font-family="Calibri" font-size="40pt" color="black">
						<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='DefLeppardDrasticSymphoniesTape']/name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
					   <fo:external-graphic src="{unparsed-entity-uri(/catalogue/libraryResourceList/libraryResource[@id='DefLeppardDrasticSymphoniesTape']/image/@href)}" ></fo:external-graphic>
					</fo:block>
					
										<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Вид продукт:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='DefLeppardDrasticSymphoniesTape']/typeName"/> 
						</fo:inline>
					</fo:block> 
					
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Автор:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='DefLeppardDrasticSymphoniesTape']/author"/> 
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Изпълнител:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='DefLeppardDrasticSymphoniesTape']/yearOfPublication"/>
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Жанр:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='DefLeppardDrasticSymphoniesTape']/genre"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Година на публикуване:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='DefLeppardDrasticSymphoniesTape']/yearOfPublication"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Издателство:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='DefLeppardDrasticSymphoniesTape']/publisher"/>
						</fo:inline>
					</fo:block>
									
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Описание:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='DefLeppardDrasticSymphoniesTape']/description"/>
						</fo:inline>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>	

<!--===========================Sigur Rós - Me? Su? I Eyrum Vi? Spilum Endalaust===============================-->
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			   <fo:block text-align="center" border="1pt" border-style="solid"> 
			   </fo:block>			
				<fo:block-container position="absolute" top="-1.8cm" left="-2.5cm">
					<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm"
								font-family="Calibri" font-size="40pt" color="black">
						<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='SigurRos']/name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
					   <fo:external-graphic src="{unparsed-entity-uri(/catalogue/libraryResourceList/libraryResource[@id='SigurRos']/image/@href)}" ></fo:external-graphic>
					</fo:block>
					
										<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Вид продукт:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='SigurRos']/typeName"/> 
						</fo:inline>
					</fo:block> 
					
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Автор:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='SigurRos']/author"/> 
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Изпълнител:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='SigurRos']/yearOfPublication"/>
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Жанр:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='SigurRos']/genre"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Година на публикуване:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='SigurRos']/yearOfPublication"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Издателство:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='SigurRos']/publisher"/>
						</fo:inline>
					</fo:block>
									
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Описание:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/libraryResourceList/libraryResource[@id='SigurRos']/description"/>
						</fo:inline>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>	

<!--===========================foreignResourceList===============================-->



<!--===========================Норвежка гора===============================-->
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			   <fo:block text-align="center" border="1pt" border-style="solid"> 
			   </fo:block>			
				<fo:block-container position="absolute" top="-1.8cm" left="-2.5cm">
					<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm"
								font-family="Calibri" font-size="40pt" color="black">
						<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='Murakami']/name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
					   <fo:external-graphic src="{unparsed-entity-uri(/catalogue/foreignResourceList/foreignResource[@id='Murakami']/image/@href)}" ></fo:external-graphic>
					</fo:block>
					
										<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Вид продукт:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='Murakami']/typeName"/> 
						</fo:inline>
					</fo:block> 
					
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Автор:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='Murakami']/author"/> 
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Изпълнител:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='Murakami']/yearOfPublication"/>
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Жанр:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='Murakami']/genre"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Година на публикуване:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='Murakami']/yearOfPublication"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Издателство:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='Murakami']/publisher"/>
						</fo:inline>
					</fo:block>
									
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Описание:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='Murakami']/description"/>
						</fo:inline>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>	

<!--===========================Janis Joplin ‎- The Very Best Of===============================-->
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
			   <fo:block text-align="center" border="1pt" border-style="solid"> 
			   </fo:block>			
				<fo:block-container position="absolute" top="-1.8cm" left="-2.5cm">
					<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm"
								font-family="Calibri" font-size="40pt" color="black">
						<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='JanisJoplin']/name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
					   <fo:external-graphic src="{unparsed-entity-uri(/catalogue/foreignResourceList/foreignResource[@id='JanisJoplin']/image/@href)}" ></fo:external-graphic>
					</fo:block>
					
										<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Вид продукт:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='JanisJoplin']/typeName"/> 
						</fo:inline>
					</fo:block> 
					
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Автор:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='JanisJoplin']/author"/> 
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Изпълнител:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='JanisJoplin']/yearOfPublication"/>
						</fo:inline>
					</fo:block>	
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Жанр:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='JanisJoplin']/genre"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Година на публикуване:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='JanisJoplin']/yearOfPublication"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Издателство:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='JanisJoplin']/publisher"/>
						</fo:inline>
					</fo:block>
									
					<fo:block position="relative" font-family="Calibri" font-weight="bold" font-size="15pt" color="black"
					padding-before="5mm" margin-left="2cm">
						Описание:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="/catalogue/foreignResourceList/foreignResource[@id='JanisJoplin']/description"/>
						</fo:inline>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>	


	</fo:root>

</xsl:template>

</xsl:stylesheet>		