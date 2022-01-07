
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_nor {TYPE_1__* info; } ;
struct TYPE_2__ {int flags; } ;


 int SPI_NOR_DUAL_READ ;
 int SPI_NOR_QUAD_READ ;
 int SPI_NOR_SKIP_SFDP ;
 int spi_nor_info_init_params (struct spi_nor*) ;
 int spi_nor_late_init_params (struct spi_nor*) ;
 int spi_nor_manufacturer_init_params (struct spi_nor*) ;
 int spi_nor_post_sfdp_fixups (struct spi_nor*) ;
 int spi_nor_sfdp_init_params (struct spi_nor*) ;

__attribute__((used)) static void spi_nor_init_params(struct spi_nor *nor)
{
 spi_nor_info_init_params(nor);

 spi_nor_manufacturer_init_params(nor);

 if ((nor->info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
     !(nor->info->flags & SPI_NOR_SKIP_SFDP))
  spi_nor_sfdp_init_params(nor);

 spi_nor_post_sfdp_fixups(nor);

 spi_nor_late_init_params(nor);
}
