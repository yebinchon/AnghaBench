
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pm_irq_chip {int regmap; } ;
struct irq_data {int dummy; } ;


 int BIT (int) ;
 int PM8821_BLOCKS_PER_MASTER ;
 int PM8821_SSBI_ADDR_IRQ_CLEAR (int,int) ;
 int PM8821_SSBI_ADDR_IRQ_MASK (int,int) ;
 struct pm_irq_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int pr_err (char*,unsigned int,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void pm8821_irq_mask_ack(struct irq_data *d)
{
 struct pm_irq_chip *chip = irq_data_get_irq_chip_data(d);
 unsigned int pmirq = irqd_to_hwirq(d);
 u8 block, master;
 int irq_bit, rc;

 block = pmirq / 8;
 master = block / PM8821_BLOCKS_PER_MASTER;
 irq_bit = pmirq % 8;
 block %= PM8821_BLOCKS_PER_MASTER;

 rc = regmap_update_bits(chip->regmap,
    PM8821_SSBI_ADDR_IRQ_MASK(master, block),
    BIT(irq_bit), BIT(irq_bit));
 if (rc) {
  pr_err("Failed to mask IRQ:%d rc=%d\n", pmirq, rc);
  return;
 }

 rc = regmap_update_bits(chip->regmap,
    PM8821_SSBI_ADDR_IRQ_CLEAR(master, block),
    BIT(irq_bit), BIT(irq_bit));
 if (rc)
  pr_err("Failed to CLEAR IRQ:%d rc=%d\n", pmirq, rc);
}
