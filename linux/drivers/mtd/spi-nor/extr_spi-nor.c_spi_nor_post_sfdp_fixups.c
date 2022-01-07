
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_nor {TYPE_2__* info; } ;
struct TYPE_4__ {int flags; TYPE_1__* fixups; } ;
struct TYPE_3__ {int (* post_sfdp ) (struct spi_nor*) ;} ;


 int JEDEC_MFR (TYPE_2__*) ;

 int SPI_S3AN ;
 int s3an_post_sfdp_fixups (struct spi_nor*) ;
 int spansion_post_sfdp_fixups (struct spi_nor*) ;
 int stub1 (struct spi_nor*) ;

__attribute__((used)) static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
{
 switch (JEDEC_MFR(nor->info)) {
 case 128:
  spansion_post_sfdp_fixups(nor);
  break;

 default:
  break;
 }

 if (nor->info->flags & SPI_S3AN)
  s3an_post_sfdp_fixups(nor);

 if (nor->info->fixups && nor->info->fixups->post_sfdp)
  nor->info->fixups->post_sfdp(nor);
}
