
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_4byte; int * quad_enable; } ;
struct spi_nor {TYPE_1__ params; int flags; } ;


 int SNOR_F_HAS_LOCK ;
 int st_micron_set_4byte ;

__attribute__((used)) static void st_micron_set_default_init(struct spi_nor *nor)
{
 nor->flags |= SNOR_F_HAS_LOCK;
 nor->params.quad_enable = ((void*)0);
 nor->params.set_4byte = st_micron_set_4byte;
}
