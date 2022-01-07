
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct genwqe_dev {int dummy; } ;


 int IO_PF_SLC_VIRTUAL_WINDOW ;
 int __genwqe_writeq (struct genwqe_dev*,int ,int) ;

int genwqe_write_vreg(struct genwqe_dev *cd, u32 reg, u64 val, int func)
{
 __genwqe_writeq(cd, IO_PF_SLC_VIRTUAL_WINDOW, func & 0xf);
 __genwqe_writeq(cd, reg, val);
 return 0;
}
