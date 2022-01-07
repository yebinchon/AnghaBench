
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int dummy; } ;


 int MCUCTL_REG_INTCR1 ;
 int mcuctl_write (unsigned long,struct fimc_is*,int ) ;

void fimc_is_fw_clear_irq1(struct fimc_is *is, unsigned int nr)
{
 mcuctl_write(1UL << nr, is, MCUCTL_REG_INTCR1);
}
