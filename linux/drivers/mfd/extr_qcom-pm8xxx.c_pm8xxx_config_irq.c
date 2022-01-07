
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_irq_chip {int pm_irq_lock; int regmap; } ;


 unsigned int PM_IRQF_WRITE ;
 int SSBI_REG_ADDR_IRQ_BLK_SEL ;
 int SSBI_REG_ADDR_IRQ_CONFIG ;
 int pr_err (char*,int,...) ;
 int regmap_write (int ,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
pm8xxx_config_irq(struct pm_irq_chip *chip, unsigned int bp, unsigned int cp)
{
 int rc;

 spin_lock(&chip->pm_irq_lock);
 rc = regmap_write(chip->regmap, SSBI_REG_ADDR_IRQ_BLK_SEL, bp);
 if (rc) {
  pr_err("Failed Selecting Block %d rc=%d\n", bp, rc);
  goto bail;
 }

 cp |= PM_IRQF_WRITE;
 rc = regmap_write(chip->regmap, SSBI_REG_ADDR_IRQ_CONFIG, cp);
 if (rc)
  pr_err("Failed Configuring IRQ rc=%d\n", rc);
bail:
 spin_unlock(&chip->pm_irq_lock);
 return rc;
}
