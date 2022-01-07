
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_irq_chip {int regmap; } ;


 scalar_t__ SSBI_REG_ADDR_IRQ_M_STATUS1 ;
 int pm8xxx_irq_block_handler (struct pm_irq_chip*,int) ;
 int pr_err (char*,int,...) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static int pm8xxx_irq_master_handler(struct pm_irq_chip *chip, int master)
{
 unsigned int blockbits;
 int block_number, i, ret = 0;

 ret = regmap_read(chip->regmap, SSBI_REG_ADDR_IRQ_M_STATUS1 + master,
     &blockbits);
 if (ret) {
  pr_err("Failed to read master %d ret=%d\n", master, ret);
  return ret;
 }
 if (!blockbits) {
  pr_err("master bit set in root but no blocks: %d", master);
  return 0;
 }

 for (i = 0; i < 8; i++)
  if (blockbits & (1 << i)) {
   block_number = master * 8 + i;
   ret |= pm8xxx_irq_block_handler(chip, block_number);
  }
 return ret;
}
