
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_is {int dummy; } ;


 int MCUCTL_REG_INTCR2 ;
 int MCUCTL_REG_INTSR2 ;
 int mcuctl_read (struct fimc_is*,int ) ;
 int mcuctl_write (int ,struct fimc_is*,int ) ;

void fimc_is_fw_clear_irq2(struct fimc_is *is)
{
 u32 cfg = mcuctl_read(is, MCUCTL_REG_INTSR2);
 mcuctl_write(cfg, is, MCUCTL_REG_INTCR2);
}
