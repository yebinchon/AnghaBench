
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int* mask_regs; int lock; } ;


 int PCF50633_REG_INT1M ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcf50633_reg_set_bit_mask (struct pcf50633*,int,int,int) ;

__attribute__((used)) static int __pcf50633_irq_mask_set(struct pcf50633 *pcf, int irq, u8 mask)
{
 u8 reg, bit;
 int idx;

 idx = irq >> 3;
 reg = PCF50633_REG_INT1M + idx;
 bit = 1 << (irq & 0x07);

 pcf50633_reg_set_bit_mask(pcf, reg, bit, mask ? bit : 0);

 mutex_lock(&pcf->lock);

 if (mask)
  pcf->mask_regs[idx] |= bit;
 else
  pcf->mask_regs[idx] &= ~bit;

 mutex_unlock(&pcf->lock);

 return 0;
}
