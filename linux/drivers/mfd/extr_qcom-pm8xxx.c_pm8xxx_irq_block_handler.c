
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_irq_chip {int irqdomain; } ;


 int generic_handle_irq (int) ;
 int irq_find_mapping (int ,int) ;
 int pm8xxx_read_block_irq (struct pm_irq_chip*,int,unsigned int*) ;
 int pr_err (char*,int,...) ;

__attribute__((used)) static int pm8xxx_irq_block_handler(struct pm_irq_chip *chip, int block)
{
 int pmirq, irq, i, ret = 0;
 unsigned int bits;

 ret = pm8xxx_read_block_irq(chip, block, &bits);
 if (ret) {
  pr_err("Failed reading %d block ret=%d", block, ret);
  return ret;
 }
 if (!bits) {
  pr_err("block bit set in master but no irqs: %d", block);
  return 0;
 }


 for (i = 0; i < 8; i++) {
  if (bits & (1 << i)) {
   pmirq = block * 8 + i;
   irq = irq_find_mapping(chip->irqdomain, pmirq);
   generic_handle_irq(irq);
  }
 }
 return 0;
}
