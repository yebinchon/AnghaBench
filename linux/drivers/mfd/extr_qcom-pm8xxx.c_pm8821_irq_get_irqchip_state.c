
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pm_irq_chip {int regmap; } ;
struct irq_data {int dummy; } ;
typedef enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;


 unsigned int BIT (int) ;
 int PM8821_BLOCKS_PER_MASTER ;
 int PM8821_SSBI_ADDR_IRQ_RT_STATUS (int,int) ;
 struct pm_irq_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int pr_err (char*,int,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int pm8821_irq_get_irqchip_state(struct irq_data *d,
     enum irqchip_irq_state which,
     bool *state)
{
 struct pm_irq_chip *chip = irq_data_get_irq_chip_data(d);
 int rc, pmirq = irqd_to_hwirq(d);
 u8 block, irq_bit, master;
 unsigned int bits;

 block = pmirq / 8;
 master = block / PM8821_BLOCKS_PER_MASTER;
 irq_bit = pmirq % 8;
 block %= PM8821_BLOCKS_PER_MASTER;

 rc = regmap_read(chip->regmap,
  PM8821_SSBI_ADDR_IRQ_RT_STATUS(master, block), &bits);
 if (rc) {
  pr_err("Reading Status of IRQ %d failed rc=%d\n", pmirq, rc);
  return rc;
 }

 *state = !!(bits & BIT(irq_bit));

 return rc;
}
