
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_nor {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* fixups; } ;
struct TYPE_3__ {int (* default_init ) (struct spi_nor*) ;} ;


 int JEDEC_MFR (TYPE_2__*) ;




 int macronix_set_default_init (struct spi_nor*) ;
 int st_micron_set_default_init (struct spi_nor*) ;
 int stub1 (struct spi_nor*) ;
 int winbond_set_default_init (struct spi_nor*) ;

__attribute__((used)) static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
{

 switch (JEDEC_MFR(nor->info)) {
 case 131:
  macronix_set_default_init(nor);
  break;

 case 129:
 case 130:
  st_micron_set_default_init(nor);
  break;

 case 128:
  winbond_set_default_init(nor);
  break;

 default:
  break;
 }

 if (nor->info->fixups && nor->info->fixups->default_init)
  nor->info->fixups->default_init(nor);
}
