
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_nor_hwcaps {int dummy; } ;
struct TYPE_2__ {int (* setup ) (struct spi_nor*,struct spi_nor_hwcaps const*) ;} ;
struct spi_nor {TYPE_1__ params; } ;


 int stub1 (struct spi_nor*,struct spi_nor_hwcaps const*) ;

__attribute__((used)) static int spi_nor_setup(struct spi_nor *nor,
    const struct spi_nor_hwcaps *hwcaps)
{
 if (!nor->params.setup)
  return 0;

 return nor->params.setup(nor, hwcaps);
}
