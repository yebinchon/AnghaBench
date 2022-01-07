
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max8998_dev {int* irq_masks_cur; int irq; int irq_domain; int dev; int i2c; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int reg; int mask; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MAX8998_IRQ_NR ;
 int MAX8998_NUM_IRQ_REGS ;
 int MAX8998_REG_IRQ1 ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*,int) ;
 int disable_irq_nosync (int ) ;
 int handle_nested_irq (int) ;
 int irq_find_mapping (int ,int) ;
 int max8998_bulk_read (int ,int ,int,int*) ;
 TYPE_1__* max8998_irqs ;

__attribute__((used)) static irqreturn_t max8998_irq_thread(int irq, void *data)
{
 struct max8998_dev *max8998 = data;
 u8 irq_reg[MAX8998_NUM_IRQ_REGS];
 int ret;
 int i;

 ret = max8998_bulk_read(max8998->i2c, MAX8998_REG_IRQ1,
   MAX8998_NUM_IRQ_REGS, irq_reg);
 if (ret < 0) {
  dev_err(max8998->dev, "Failed to read interrupt register: %d\n",
    ret);
  return IRQ_NONE;
 }


 for (i = 0; i < MAX8998_NUM_IRQ_REGS; i++)
  irq_reg[i] &= ~max8998->irq_masks_cur[i];


 for (i = 0; i < MAX8998_IRQ_NR; i++) {
  if (irq_reg[max8998_irqs[i].reg - 1] & max8998_irqs[i].mask) {
   irq = irq_find_mapping(max8998->irq_domain, i);
   if (WARN_ON(!irq)) {
    disable_irq_nosync(max8998->irq);
    return IRQ_NONE;
   }
   handle_nested_irq(irq);
  }
 }

 return IRQ_HANDLED;
}
