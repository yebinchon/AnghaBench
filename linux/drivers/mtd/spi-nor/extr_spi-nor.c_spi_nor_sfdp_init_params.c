
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor_flash_parameter {int dummy; } ;
struct spi_nor {struct spi_nor_flash_parameter params; int flags; scalar_t__ addr_width; } ;
typedef int sfdp_params ;


 int SNOR_F_4B_OPCODES ;
 int memcpy (struct spi_nor_flash_parameter*,struct spi_nor_flash_parameter*,int) ;
 scalar_t__ spi_nor_parse_sfdp (struct spi_nor*,struct spi_nor_flash_parameter*) ;

__attribute__((used)) static void spi_nor_sfdp_init_params(struct spi_nor *nor)
{
 struct spi_nor_flash_parameter sfdp_params;

 memcpy(&sfdp_params, &nor->params, sizeof(sfdp_params));

 if (spi_nor_parse_sfdp(nor, &sfdp_params)) {
  nor->addr_width = 0;
  nor->flags &= ~SNOR_F_4B_OPCODES;
 } else {
  memcpy(&nor->params, &sfdp_params, sizeof(nor->params));
 }
}
