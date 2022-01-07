
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int dummy; } ;


 int IO_SLC_MISC_DEBUG ;
 int IO_SLC_MISC_DEBUG_CLR ;
 int __genwqe_writeq (struct genwqe_dev*,int ,int) ;
 scalar_t__ genwqe_need_err_masking (struct genwqe_dev*) ;

void genwqe_start_traps(struct genwqe_dev *cd)
{
 __genwqe_writeq(cd, IO_SLC_MISC_DEBUG_CLR, 0xcull);

 if (genwqe_need_err_masking(cd))
  __genwqe_writeq(cd, IO_SLC_MISC_DEBUG, 0x0aull);
}
