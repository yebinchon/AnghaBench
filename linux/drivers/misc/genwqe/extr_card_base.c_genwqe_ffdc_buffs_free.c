
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct genwqe_dev {TYPE_1__* ffdc; } ;
struct TYPE_2__ {int * regs; } ;


 unsigned int GENWQE_DBG_UNITS ;
 int kfree (int *) ;

__attribute__((used)) static void genwqe_ffdc_buffs_free(struct genwqe_dev *cd)
{
 unsigned int type;

 for (type = 0; type < GENWQE_DBG_UNITS; type++) {
  kfree(cd->ffdc[type].regs);
  cd->ffdc[type].regs = ((void*)0);
 }
}
