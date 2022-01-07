
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct pm_irq_chip {int pm_irq_lock; int regmap; } ;
struct irq_data {int dummy; } ;
typedef enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;


 unsigned int BIT (int) ;
 int EINVAL ;
 int IRQCHIP_STATE_LINE_LEVEL ;
 int SSBI_REG_ADDR_IRQ_BLK_SEL ;
 int SSBI_REG_ADDR_IRQ_RT_STATUS ;
 struct pm_irq_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int pr_err (char*,int,...) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pm8xxx_irq_get_irqchip_state(struct irq_data *d,
     enum irqchip_irq_state which,
     bool *state)
{
 struct pm_irq_chip *chip = irq_data_get_irq_chip_data(d);
 unsigned int pmirq = irqd_to_hwirq(d);
 unsigned int bits;
 int irq_bit;
 u8 block;
 int rc;

 if (which != IRQCHIP_STATE_LINE_LEVEL)
  return -EINVAL;

 block = pmirq / 8;
 irq_bit = pmirq % 8;

 spin_lock(&chip->pm_irq_lock);
 rc = regmap_write(chip->regmap, SSBI_REG_ADDR_IRQ_BLK_SEL, block);
 if (rc) {
  pr_err("Failed Selecting Block %d rc=%d\n", block, rc);
  goto bail;
 }

 rc = regmap_read(chip->regmap, SSBI_REG_ADDR_IRQ_RT_STATUS, &bits);
 if (rc) {
  pr_err("Failed Reading Status rc=%d\n", rc);
  goto bail;
 }

 *state = !!(bits & BIT(irq_bit));
bail:
 spin_unlock(&chip->pm_irq_lock);

 return rc;
}
