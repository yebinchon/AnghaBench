
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pcf50633 {size_t* mask_regs; } ;



int pcf50633_irq_mask_get(struct pcf50633 *pcf, int irq)
{
 u8 reg, bits;

 reg = irq >> 3;
 bits = 1 << (irq & 0x07);

 return pcf->mask_regs[reg] & bits;
}
