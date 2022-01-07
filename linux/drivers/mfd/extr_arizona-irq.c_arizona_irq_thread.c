
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_flags; int irq_gpio; } ;
struct arizona {int dev; TYPE_1__ pdata; int virq; int regmap; scalar_t__ aod_irq_chip; } ;
typedef int irqreturn_t ;


 int ARIZONA_AOD_IRQ1 ;
 unsigned int ARIZONA_IRQ1_STS ;
 int ARIZONA_IRQ_PIN_STATUS ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 scalar_t__ gpio_get_value_cansleep (int ) ;
 int handle_nested_irq (int ) ;
 int irq_find_mapping (int ,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t arizona_irq_thread(int irq, void *data)
{
 struct arizona *arizona = data;
 bool poll;
 unsigned int val;
 int ret;

 ret = pm_runtime_get_sync(arizona->dev);
 if (ret < 0) {
  dev_err(arizona->dev, "Failed to resume device: %d\n", ret);
  return IRQ_NONE;
 }

 do {
  poll = 0;

  if (arizona->aod_irq_chip) {




   ret = regmap_read(arizona->regmap,
       ARIZONA_AOD_IRQ1, &val);
   if (ret)
    dev_warn(arizona->dev,
     "Failed to read AOD IRQ1 %d\n", ret);
   else if (val)
    handle_nested_irq(
     irq_find_mapping(arizona->virq, 0));
  }





  ret = regmap_read(arizona->regmap, ARIZONA_IRQ_PIN_STATUS,
      &val);
  if (ret == 0 && val & ARIZONA_IRQ1_STS) {
   handle_nested_irq(irq_find_mapping(arizona->virq, 1));
  } else if (ret != 0) {
   dev_err(arizona->dev,
    "Failed to read main IRQ status: %d\n", ret);
  }





  if (!arizona->pdata.irq_gpio) {
   break;
  } else if (arizona->pdata.irq_flags & IRQF_TRIGGER_RISING &&
      gpio_get_value_cansleep(arizona->pdata.irq_gpio)) {
   poll = 1;
  } else if (arizona->pdata.irq_flags & IRQF_TRIGGER_FALLING &&
      !gpio_get_value_cansleep(arizona->pdata.irq_gpio)) {
   poll = 1;
  }
 } while (poll);

 pm_runtime_mark_last_busy(arizona->dev);
 pm_runtime_put_autosuspend(arizona->dev);

 return IRQ_HANDLED;
}
