
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct max8925_platform_data {scalar_t__ touch; scalar_t__ backlight; scalar_t__ power; } ;
struct max8925_chip {int dev; int tsc_irq; int irq_base; TYPE_6__* rtc; TYPE_6__* adc; TYPE_6__* i2c; } ;
struct max8925_backlight_pdata {int dummy; } ;
struct TYPE_11__ {int irq; } ;
struct TYPE_10__ {int pdata_size; scalar_t__* platform_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int MAX8925_ADC_SCHED ;
 int MAX8925_MPL_CNTL ;
 int MAX8925_NREF_OK ;
 int MAX8925_RESET_CNFG ;
 int MAX8925_TSC_CNFG1 ;
 int MAX8925_TSC_IRQ ;
 TYPE_1__* bk_devs ;
 int dev_err (int ,char*,...) ;
 int init_regulator (struct max8925_chip*,struct max8925_platform_data*) ;
 int max8925_irq_init (struct max8925_chip*,int ,struct max8925_platform_data*) ;
 int max8925_reg_read (TYPE_6__*,int ) ;
 int max8925_set_bits (TYPE_6__*,int ,int,int) ;
 int mfd_add_devices (int ,int ,TYPE_1__*,int ,int *,int ,int *) ;
 int mfd_remove_devices (int ) ;
 TYPE_1__* onkey_devs ;
 TYPE_1__* power_devs ;
 TYPE_1__* rtc_devs ;
 TYPE_1__* touch_devs ;

int max8925_device_init(struct max8925_chip *chip,
      struct max8925_platform_data *pdata)
{
 int ret;

 max8925_irq_init(chip, chip->i2c->irq, pdata);

 if (pdata && (pdata->power || pdata->touch)) {

  max8925_set_bits(chip->i2c, MAX8925_RESET_CNFG, 1, 1);

  max8925_set_bits(chip->adc, MAX8925_TSC_CNFG1, 3, 2);

  do {
   ret = max8925_reg_read(chip->adc, MAX8925_TSC_IRQ);
  } while (ret & MAX8925_NREF_OK);

  max8925_set_bits(chip->adc, MAX8925_ADC_SCHED, 3, 2);
 }


 max8925_set_bits(chip->rtc, MAX8925_MPL_CNTL, 1 << 4, 1 << 4);

 ret = mfd_add_devices(chip->dev, 0, &rtc_devs[0],
         ARRAY_SIZE(rtc_devs),
         ((void*)0), chip->irq_base, ((void*)0));
 if (ret < 0) {
  dev_err(chip->dev, "Failed to add rtc subdev\n");
  goto out;
 }

 ret = mfd_add_devices(chip->dev, 0, &onkey_devs[0],
         ARRAY_SIZE(onkey_devs),
         ((void*)0), chip->irq_base, ((void*)0));
 if (ret < 0) {
  dev_err(chip->dev, "Failed to add onkey subdev\n");
  goto out_dev;
 }

 init_regulator(chip, pdata);

 if (pdata && pdata->backlight) {
  bk_devs[0].platform_data = &pdata->backlight;
  bk_devs[0].pdata_size = sizeof(struct max8925_backlight_pdata);
 }
 ret = mfd_add_devices(chip->dev, 0, bk_devs, ARRAY_SIZE(bk_devs),
         ((void*)0), 0, ((void*)0));
 if (ret < 0) {
  dev_err(chip->dev, "Failed to add backlight subdev\n");
  goto out_dev;
 }

 ret = mfd_add_devices(chip->dev, 0, &power_devs[0],
         ARRAY_SIZE(power_devs),
         ((void*)0), 0, ((void*)0));
 if (ret < 0) {
  dev_err(chip->dev,
   "Failed to add power supply subdev, err = %d\n", ret);
  goto out_dev;
 }

 if (pdata && pdata->touch) {
  ret = mfd_add_devices(chip->dev, 0, &touch_devs[0],
          ARRAY_SIZE(touch_devs),
          ((void*)0), chip->tsc_irq, ((void*)0));
  if (ret < 0) {
   dev_err(chip->dev, "Failed to add touch subdev\n");
   goto out_dev;
  }
 }

 return 0;
out_dev:
 mfd_remove_devices(chip->dev);
out:
 return ret;
}
