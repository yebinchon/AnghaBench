
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_platform_data {int irq_flags; } ;
struct irq_data {int dummy; } ;
struct i2c_client {int dev; int irq; } ;


 int EINVAL ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*,int ) ;
 struct irq_data* irq_get_irq_data (int ) ;
 int irqd_get_trigger_type (struct irq_data*) ;

__attribute__((used)) static int palmas_set_pdata_irq_flag(struct i2c_client *i2c,
  struct palmas_platform_data *pdata)
{
 struct irq_data *irq_data = irq_get_irq_data(i2c->irq);
 if (!irq_data) {
  dev_err(&i2c->dev, "Invalid IRQ: %d\n", i2c->irq);
  return -EINVAL;
 }

 pdata->irq_flags = irqd_get_trigger_type(irq_data);
 dev_info(&i2c->dev, "Irq flag is 0x%08x\n", pdata->irq_flags);
 return 0;
}
