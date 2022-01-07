
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum spi_nor_protocol { ____Placeholder_spi_nor_protocol } spi_nor_protocol ;
typedef enum hifmc_iftype { ____Placeholder_hifmc_iftype } hifmc_iftype ;


 int IF_TYPE_DIO ;
 int IF_TYPE_DUAL ;
 int IF_TYPE_QIO ;
 int IF_TYPE_QUAD ;
 int IF_TYPE_STD ;






__attribute__((used)) static int hisi_spi_nor_get_if_type(enum spi_nor_protocol proto)
{
 enum hifmc_iftype if_type;

 switch (proto) {
 case 131:
  if_type = IF_TYPE_DUAL;
  break;
 case 129:
  if_type = IF_TYPE_DIO;
  break;
 case 130:
  if_type = IF_TYPE_QUAD;
  break;
 case 128:
  if_type = IF_TYPE_QIO;
  break;
 case 132:
 default:
  if_type = IF_TYPE_STD;
  break;
 }

 return if_type;
}
