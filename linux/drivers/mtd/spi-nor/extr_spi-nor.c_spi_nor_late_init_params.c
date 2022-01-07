
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * locking_ops; } ;
struct spi_nor {int flags; TYPE_1__ params; } ;


 int SNOR_F_HAS_LOCK ;
 int stm_locking_ops ;

__attribute__((used)) static void spi_nor_late_init_params(struct spi_nor *nor)
{




 if (nor->flags & SNOR_F_HAS_LOCK && !nor->params.locking_ops)
  nor->params.locking_ops = &stm_locking_ops;
}
