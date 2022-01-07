
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_irq_data {int mask_reg; unsigned char enable; } ;
struct max8925_chip {int irq_lock; int adc; int rtc; int i2c; int dev; } ;
struct irq_data {int dummy; } ;


 int ARRAY_SIZE (struct max8925_irq_data*) ;






 int dev_err (int ,char*) ;
 struct max8925_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct max8925_irq_data* max8925_irqs ;
 int max8925_reg_write (int ,int const,unsigned char) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void max8925_irq_sync_unlock(struct irq_data *data)
{
 struct max8925_chip *chip = irq_data_get_irq_chip_data(data);
 struct max8925_irq_data *irq_data;
 static unsigned char cache_chg[2] = {0xff, 0xff};
 static unsigned char cache_on[2] = {0xff, 0xff};
 static unsigned char cache_rtc = 0xff, cache_tsc = 0xff;
 unsigned char irq_chg[2], irq_on[2];
 unsigned char irq_rtc, irq_tsc;
 int i;


 irq_chg[0] = cache_chg[0];
 irq_chg[1] = cache_chg[1];
 irq_on[0] = cache_on[0];
 irq_on[1] = cache_on[1];
 irq_rtc = cache_rtc;
 irq_tsc = cache_tsc;
 for (i = 0; i < ARRAY_SIZE(max8925_irqs); i++) {
  irq_data = &max8925_irqs[i];

  switch (irq_data->mask_reg) {
  case 133:
   irq_chg[0] &= ~irq_data->enable;
   break;
  case 132:
   irq_chg[1] &= ~irq_data->enable;
   break;
  case 131:
   irq_on[0] &= ~irq_data->enable;
   break;
  case 130:
   irq_on[1] &= ~irq_data->enable;
   break;
  case 129:
   irq_rtc &= ~irq_data->enable;
   break;
  case 128:
   irq_tsc &= ~irq_data->enable;
   break;
  default:
   dev_err(chip->dev, "wrong IRQ\n");
   break;
  }
 }

 if (cache_chg[0] != irq_chg[0]) {
  cache_chg[0] = irq_chg[0];
  max8925_reg_write(chip->i2c, 133,
   irq_chg[0]);
 }
 if (cache_chg[1] != irq_chg[1]) {
  cache_chg[1] = irq_chg[1];
  max8925_reg_write(chip->i2c, 132,
   irq_chg[1]);
 }
 if (cache_on[0] != irq_on[0]) {
  cache_on[0] = irq_on[0];
  max8925_reg_write(chip->i2c, 131,
    irq_on[0]);
 }
 if (cache_on[1] != irq_on[1]) {
  cache_on[1] = irq_on[1];
  max8925_reg_write(chip->i2c, 130,
    irq_on[1]);
 }
 if (cache_rtc != irq_rtc) {
  cache_rtc = irq_rtc;
  max8925_reg_write(chip->rtc, 129, irq_rtc);
 }
 if (cache_tsc != irq_tsc) {
  cache_tsc = irq_tsc;
  max8925_reg_write(chip->adc, 128, irq_tsc);
 }

 mutex_unlock(&chip->irq_lock);
}
