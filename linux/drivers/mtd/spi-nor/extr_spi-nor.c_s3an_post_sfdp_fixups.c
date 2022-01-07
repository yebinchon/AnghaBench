
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int setup; } ;
struct spi_nor {TYPE_1__ params; } ;


 int s3an_nor_setup ;

__attribute__((used)) static void s3an_post_sfdp_fixups(struct spi_nor *nor)
{
 nor->params.setup = s3an_nor_setup;
}
