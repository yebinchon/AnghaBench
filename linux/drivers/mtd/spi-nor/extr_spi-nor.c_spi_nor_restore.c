
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_4byte ) (struct spi_nor*,int) ;} ;
struct spi_nor {int addr_width; int flags; TYPE_1__ params; } ;


 int SNOR_F_4B_OPCODES ;
 int SNOR_F_BROKEN_RESET ;
 int stub1 (struct spi_nor*,int) ;

void spi_nor_restore(struct spi_nor *nor)
{

 if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES) &&
     nor->flags & SNOR_F_BROKEN_RESET)
  nor->params.set_4byte(nor, 0);
}
