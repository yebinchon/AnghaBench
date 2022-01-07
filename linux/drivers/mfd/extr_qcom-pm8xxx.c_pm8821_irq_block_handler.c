
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_irq_chip {int irqdomain; int regmap; } ;


 unsigned int BIT (int) ;
 int PM8821_BLOCKS_PER_MASTER ;
 int PM8821_SSBI_ADDR_IRQ_ROOT (int,int) ;
 int generic_handle_irq (int) ;
 int irq_find_mapping (int ,int) ;
 int pr_err (char*,int,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static void pm8821_irq_block_handler(struct pm_irq_chip *chip,
         int master, int block)
{
 int pmirq, irq, i, ret;
 unsigned int bits;

 ret = regmap_read(chip->regmap,
     PM8821_SSBI_ADDR_IRQ_ROOT(master, block), &bits);
 if (ret) {
  pr_err("Reading block %d failed ret=%d", block, ret);
  return;
 }


 block += (master * PM8821_BLOCKS_PER_MASTER) - 1;


 for (i = 0; i < 8; i++) {
  if (bits & BIT(i)) {
   pmirq = block * 8 + i;
   irq = irq_find_mapping(chip->irqdomain, pmirq);
   generic_handle_irq(irq);
  }
 }
}
