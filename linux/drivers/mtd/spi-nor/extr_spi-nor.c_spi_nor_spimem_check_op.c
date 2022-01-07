
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; } ;
struct spi_nor {int spimem; TYPE_1__ mtd; } ;
struct TYPE_4__ {int nbytes; } ;
struct spi_mem_op {TYPE_2__ addr; } ;


 int ENOTSUPP ;
 scalar_t__ SZ_16M ;
 int spi_mem_supports_op (int ,struct spi_mem_op*) ;

__attribute__((used)) static int spi_nor_spimem_check_op(struct spi_nor *nor,
       struct spi_mem_op *op)
{






 op->addr.nbytes = 4;
 if (!spi_mem_supports_op(nor->spimem, op)) {
  if (nor->mtd.size > SZ_16M)
   return -ENOTSUPP;


  op->addr.nbytes = 3;
  if (!spi_mem_supports_op(nor->spimem, op))
   return -ENOTSUPP;
 }

 return 0;
}
