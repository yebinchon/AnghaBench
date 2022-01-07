
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_irq_data {int mask_reg; unsigned char offs; unsigned char enable; } ;
struct pm860x_chip {scalar_t__ id; int irq_lock; int dev; struct i2c_client* companion; struct i2c_client* client; } ;
struct irq_data {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (struct pm860x_irq_data*) ;
 scalar_t__ CHIP_PM8607 ;



 int dev_err (int ,char*) ;
 struct pm860x_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 struct pm860x_irq_data* pm860x_irqs ;
 int pm860x_reg_write (struct i2c_client*,int const,unsigned char) ;

__attribute__((used)) static void pm860x_irq_sync_unlock(struct irq_data *data)
{
 struct pm860x_chip *chip = irq_data_get_irq_chip_data(data);
 struct pm860x_irq_data *irq_data;
 struct i2c_client *i2c;
 static unsigned char cached[3] = {0x0, 0x0, 0x0};
 unsigned char mask[3];
 int i;

 i2c = (chip->id == CHIP_PM8607) ? chip->client : chip->companion;

 for (i = 0; i < 3; i++)
  mask[i] = cached[i];
 for (i = 0; i < ARRAY_SIZE(pm860x_irqs); i++) {
  irq_data = &pm860x_irqs[i];
  switch (irq_data->mask_reg) {
  case 130:
   mask[0] &= ~irq_data->offs;
   mask[0] |= irq_data->enable;
   break;
  case 129:
   mask[1] &= ~irq_data->offs;
   mask[1] |= irq_data->enable;
   break;
  case 128:
   mask[2] &= ~irq_data->offs;
   mask[2] |= irq_data->enable;
   break;
  default:
   dev_err(chip->dev, "wrong IRQ\n");
   break;
  }
 }

 for (i = 0; i < 3; i++) {
  if (mask[i] != cached[i]) {
   cached[i] = mask[i];
   pm860x_reg_write(i2c, 130 + i, mask[i]);
  }
 }

 mutex_unlock(&chip->irq_lock);
}
