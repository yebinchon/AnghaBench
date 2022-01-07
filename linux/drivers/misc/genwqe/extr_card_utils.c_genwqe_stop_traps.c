
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int dummy; } ;


 int IO_SLC_MISC_DEBUG_SET ;
 int __genwqe_writeq (struct genwqe_dev*,int ,int) ;

void genwqe_stop_traps(struct genwqe_dev *cd)
{
 __genwqe_writeq(cd, IO_SLC_MISC_DEBUG_SET, 0xcull);
}
