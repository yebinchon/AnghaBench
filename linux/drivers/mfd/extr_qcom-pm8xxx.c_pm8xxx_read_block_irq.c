
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_irq_chip {int pm_irq_lock; int regmap; } ;


 int SSBI_REG_ADDR_IRQ_BLK_SEL ;
 int SSBI_REG_ADDR_IRQ_IT_STATUS ;
 int pr_err (char*,int,...) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pm8xxx_read_block_irq(struct pm_irq_chip *chip, unsigned int bp,
     unsigned int *ip)
{
 int rc;

 spin_lock(&chip->pm_irq_lock);
 rc = regmap_write(chip->regmap, SSBI_REG_ADDR_IRQ_BLK_SEL, bp);
 if (rc) {
  pr_err("Failed Selecting Block %d rc=%d\n", bp, rc);
  goto bail;
 }

 rc = regmap_read(chip->regmap, SSBI_REG_ADDR_IRQ_IT_STATUS, ip);
 if (rc)
  pr_err("Failed Reading Status rc=%d\n", rc);
bail:
 spin_unlock(&chip->pm_irq_lock);
 return rc;
}
