
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_nor_flash_parameter {int dummy; } ;
struct spi_nor {TYPE_2__* info; } ;
struct sfdp_parameter_header {int dummy; } ;
struct sfdp_bfpt {int dummy; } ;
struct TYPE_4__ {TYPE_1__* fixups; } ;
struct TYPE_3__ {int (* post_bfpt ) (struct spi_nor*,struct sfdp_parameter_header const*,struct sfdp_bfpt const*,struct spi_nor_flash_parameter*) ;} ;


 int stub1 (struct spi_nor*,struct sfdp_parameter_header const*,struct sfdp_bfpt const*,struct spi_nor_flash_parameter*) ;

__attribute__((used)) static int
spi_nor_post_bfpt_fixups(struct spi_nor *nor,
    const struct sfdp_parameter_header *bfpt_header,
    const struct sfdp_bfpt *bfpt,
    struct spi_nor_flash_parameter *params)
{
 if (nor->info->fixups && nor->info->fixups->post_bfpt)
  return nor->info->fixups->post_bfpt(nor, bfpt_header, bfpt,
          params);

 return 0;
}
