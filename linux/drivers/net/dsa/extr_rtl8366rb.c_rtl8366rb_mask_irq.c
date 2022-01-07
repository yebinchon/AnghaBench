
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_smi {int dev; int map; } ;
struct irq_data {int dummy; } ;


 int RTL8366RB_INTERRUPT_MASK_REG ;
 int dev_err (int ,char*) ;
 struct realtek_smi* irq_data_get_irq_chip_data (struct irq_data*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rtl8366rb_get_irqmask (struct irq_data*) ;

__attribute__((used)) static void rtl8366rb_mask_irq(struct irq_data *d)
{
 struct realtek_smi *smi = irq_data_get_irq_chip_data(d);
 int ret;

 ret = regmap_update_bits(smi->map, RTL8366RB_INTERRUPT_MASK_REG,
     rtl8366rb_get_irqmask(d), 0);
 if (ret)
  dev_err(smi->dev, "could not mask IRQ\n");
}
