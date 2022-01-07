
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_4byte; } ;
struct spi_nor {TYPE_1__ params; } ;


 int winbond_set_4byte ;

__attribute__((used)) static void winbond_set_default_init(struct spi_nor *nor)
{
 nor->params.set_4byte = winbond_set_4byte;
}
