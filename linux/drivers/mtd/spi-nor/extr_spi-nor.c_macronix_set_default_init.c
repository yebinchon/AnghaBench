
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_4byte; int quad_enable; } ;
struct spi_nor {TYPE_1__ params; } ;


 int macronix_quad_enable ;
 int macronix_set_4byte ;

__attribute__((used)) static void macronix_set_default_init(struct spi_nor *nor)
{
 nor->params.quad_enable = macronix_quad_enable;
 nor->params.set_4byte = macronix_set_4byte;
}
