
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_msic {unsigned short irq_base; } ;


 int EINVAL ;
 unsigned short INTEL_MSIC_IRQLVL1 ;
 unsigned short INTEL_MSIC_RESETIRQ2 ;
 scalar_t__ WARN_ON (int) ;
 int readb (unsigned short) ;

int intel_msic_irq_read(struct intel_msic *msic, unsigned short reg, u8 *val)
{
 if (WARN_ON(reg < INTEL_MSIC_IRQLVL1 || reg > INTEL_MSIC_RESETIRQ2))
  return -EINVAL;

 *val = readb(msic->irq_base + (reg - INTEL_MSIC_IRQLVL1));
 return 0;
}
