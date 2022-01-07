
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int dummy; } ;


 int INTGR0_INTGD (int ) ;
 int MCUCTL_REG_INTGR0 ;
 int mcuctl_write (int ,struct fimc_is*,int ) ;

void fimc_is_hw_set_intgr0_gd0(struct fimc_is *is)
{
 mcuctl_write(INTGR0_INTGD(0), is, MCUCTL_REG_INTGR0);
}
