
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_platform_data {int * power; int * bci; int vaux4; int vaux3; int vaux1; int vsim; int vmmc2; int vpll2; int vintdig; int vintana2; int vintana1; int vaux2; int vdac; int vmmc1; int vdd2; int vdd1; int vio; int vpll1; int * audio; int * usb; int * madc; int * keypad; int * gpio; } ;
struct TYPE_2__ {int valid_modes_mask; int valid_ops_mask; } ;
struct regulator_init_data {TYPE_1__ constraints; } ;
struct regulator_consumer_supply {char* supply; void* dev_name; } ;
struct device {int dummy; } ;


 unsigned int BCI_INTR_OFFSET ;
 unsigned int BCI_PRES_INTR_OFFSET ;
 int CONFIG_CHARGER_TWL4030 ;
 int CONFIG_GPIO_TWL4030 ;
 int CONFIG_INPUT_TWL4030_PWRBUTTON ;
 int CONFIG_KEYBOARD_TWL4030 ;
 int CONFIG_MFD_TWL4030_AUDIO ;
 int CONFIG_PWM_TWL ;
 int CONFIG_PWM_TWL_LED ;
 int CONFIG_REGULATOR_TWL4030 ;
 int CONFIG_RTC_DRV_TWL4030 ;
 int CONFIG_TWL4030_MADC ;
 int CONFIG_TWL4030_POWER ;
 int CONFIG_TWL4030_USB ;
 int CONFIG_TWL4030_WATCHDOG ;
 unsigned int GPIO_INTR_OFFSET ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct device*) ;
 unsigned int KEYPAD_INTR_OFFSET ;
 unsigned int MADC_INTR_OFFSET ;
 int PTR_ERR (struct device*) ;
 int REGULATOR_CHANGE_MODE ;
 int REGULATOR_CHANGE_STATUS ;
 int REGULATOR_MODE_NORMAL ;
 int REGULATOR_MODE_STANDBY ;
 unsigned int RTC_INTR_OFFSET ;
 unsigned long TPS_SUBSET ;
 int TWL4030_MODULE_AUDIO_VOICE ;
 int TWL4030_MODULE_GPIO ;
 int TWL4030_MODULE_KEYPAD ;
 int TWL4030_MODULE_MADC ;
 int TWL4030_REG_VAUX1 ;
 int TWL4030_REG_VAUX2 ;
 int TWL4030_REG_VAUX2_4030 ;
 int TWL4030_REG_VAUX3 ;
 int TWL4030_REG_VAUX4 ;
 int TWL4030_REG_VDAC ;
 int TWL4030_REG_VDD1 ;
 int TWL4030_REG_VDD2 ;
 int TWL4030_REG_VINTANA1 ;
 int TWL4030_REG_VINTANA2 ;
 int TWL4030_REG_VINTDIG ;
 int TWL4030_REG_VIO ;
 int TWL4030_REG_VMMC1 ;
 int TWL4030_REG_VMMC2 ;
 int TWL4030_REG_VPLL1 ;
 int TWL4030_REG_VPLL2 ;
 int TWL4030_REG_VSIM ;
 int TWL4030_REG_VUSB1V5 ;
 int TWL4030_REG_VUSB1V8 ;
 int TWL4030_REG_VUSB3V1 ;
 unsigned long TWL4030_VAUX2 ;
 unsigned long TWL5031 ;
 int TWL_MODULE_LED ;
 int TWL_MODULE_MAIN_CHARGE ;
 int TWL_MODULE_PM_MASTER ;
 int TWL_MODULE_PM_RECEIVER ;
 int TWL_MODULE_PWM ;
 int TWL_MODULE_RTC ;
 int TWL_MODULE_USB ;
 unsigned int USB_INTR_OFFSET ;
 unsigned int USB_PRES_INTR_OFFSET ;
 struct device* add_child (int ,char*,int *,int,int,unsigned int,unsigned int) ;
 struct device* add_regulator (int ,int ,unsigned long) ;
 struct device* add_regulator_linked (int ,struct regulator_init_data*,struct regulator_consumer_supply*,int,unsigned long) ;
 void* dev_name (struct device*) ;
 scalar_t__ twl_class_is_4030 () ;

__attribute__((used)) static int
add_children(struct twl4030_platform_data *pdata, unsigned irq_base,
  unsigned long features)
{
 struct device *child;

 if (IS_ENABLED(CONFIG_GPIO_TWL4030) && pdata->gpio) {
  child = add_child(TWL4030_MODULE_GPIO, "twl4030_gpio",
    pdata->gpio, sizeof(*pdata->gpio),
    0, irq_base + GPIO_INTR_OFFSET, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_KEYBOARD_TWL4030) && pdata->keypad) {
  child = add_child(TWL4030_MODULE_KEYPAD, "twl4030_keypad",
    pdata->keypad, sizeof(*pdata->keypad),
    1, irq_base + KEYPAD_INTR_OFFSET, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_TWL4030_MADC) && pdata->madc &&
     twl_class_is_4030()) {
  child = add_child(TWL4030_MODULE_MADC, "twl4030_madc",
    pdata->madc, sizeof(*pdata->madc),
    1, irq_base + MADC_INTR_OFFSET, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_RTC_DRV_TWL4030)) {







  child = add_child(TWL_MODULE_RTC, "twl_rtc", ((void*)0), 0,
    1, irq_base + RTC_INTR_OFFSET, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_PWM_TWL)) {
  child = add_child(TWL_MODULE_PWM, "twl-pwm", ((void*)0), 0,
      0, 0, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_PWM_TWL_LED)) {
  child = add_child(TWL_MODULE_LED, "twl-pwmled", ((void*)0), 0,
      0, 0, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_TWL4030_USB) && pdata->usb &&
     twl_class_is_4030()) {

  static struct regulator_consumer_supply usb1v5 = {
   .supply = "usb1v5",
  };
  static struct regulator_consumer_supply usb1v8 = {
   .supply = "usb1v8",
  };
  static struct regulator_consumer_supply usb3v1 = {
   .supply = "usb3v1",
  };


  if (IS_ENABLED(CONFIG_REGULATOR_TWL4030)) {

   struct regulator_init_data usb_fixed = {
    .constraints.valid_modes_mask =
     REGULATOR_MODE_NORMAL
     | REGULATOR_MODE_STANDBY,
    .constraints.valid_ops_mask =
     REGULATOR_CHANGE_MODE
     | REGULATOR_CHANGE_STATUS,
   };

   child = add_regulator_linked(TWL4030_REG_VUSB1V5,
            &usb_fixed, &usb1v5, 1,
            features);
   if (IS_ERR(child))
    return PTR_ERR(child);

   child = add_regulator_linked(TWL4030_REG_VUSB1V8,
            &usb_fixed, &usb1v8, 1,
            features);
   if (IS_ERR(child))
    return PTR_ERR(child);

   child = add_regulator_linked(TWL4030_REG_VUSB3V1,
            &usb_fixed, &usb3v1, 1,
            features);
   if (IS_ERR(child))
    return PTR_ERR(child);

  }

  child = add_child(TWL_MODULE_USB, "twl4030_usb",
    pdata->usb, sizeof(*pdata->usb), 1,

    irq_base + USB_PRES_INTR_OFFSET,
    irq_base + USB_INTR_OFFSET);

  if (IS_ERR(child))
   return PTR_ERR(child);


  if (IS_ENABLED(CONFIG_REGULATOR_TWL4030) && child) {
   usb1v5.dev_name = dev_name(child);
   usb1v8.dev_name = dev_name(child);
   usb3v1.dev_name = dev_name(child);
  }
 }

 if (IS_ENABLED(CONFIG_TWL4030_WATCHDOG) && twl_class_is_4030()) {
  child = add_child(TWL_MODULE_PM_RECEIVER, "twl4030_wdt", ((void*)0),
      0, 0, 0, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_INPUT_TWL4030_PWRBUTTON) && twl_class_is_4030()) {
  child = add_child(TWL_MODULE_PM_MASTER, "twl4030_pwrbutton",
      ((void*)0), 0, 1, irq_base + 8 + 0, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_MFD_TWL4030_AUDIO) && pdata->audio &&
     twl_class_is_4030()) {
  child = add_child(TWL4030_MODULE_AUDIO_VOICE, "twl4030-audio",
    pdata->audio, sizeof(*pdata->audio),
    0, 0, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }


 if (IS_ENABLED(CONFIG_REGULATOR_TWL4030) && twl_class_is_4030()) {
  child = add_regulator(TWL4030_REG_VPLL1, pdata->vpll1,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VIO, pdata->vio,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VDD1, pdata->vdd1,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VDD2, pdata->vdd2,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VMMC1, pdata->vmmc1,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VDAC, pdata->vdac,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator((features & TWL4030_VAUX2)
     ? TWL4030_REG_VAUX2_4030
     : TWL4030_REG_VAUX2,
    pdata->vaux2, features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VINTANA1, pdata->vintana1,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VINTANA2, pdata->vintana2,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VINTDIG, pdata->vintdig,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }


 if (IS_ENABLED(CONFIG_REGULATOR_TWL4030) && !(features & TPS_SUBSET)
   && twl_class_is_4030()) {
  child = add_regulator(TWL4030_REG_VPLL2, pdata->vpll2,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VMMC2, pdata->vmmc2,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VSIM, pdata->vsim,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VAUX1, pdata->vaux1,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VAUX3, pdata->vaux3,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);

  child = add_regulator(TWL4030_REG_VAUX4, pdata->vaux4,
     features);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_CHARGER_TWL4030) && pdata->bci &&
   !(features & (TPS_SUBSET | TWL5031))) {
  child = add_child(TWL_MODULE_MAIN_CHARGE, "twl4030_bci",
    pdata->bci, sizeof(*pdata->bci), 0,

    irq_base + BCI_PRES_INTR_OFFSET,
    irq_base + BCI_INTR_OFFSET);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 if (IS_ENABLED(CONFIG_TWL4030_POWER) && pdata->power) {
  child = add_child(TWL_MODULE_PM_MASTER, "twl4030_power",
      pdata->power, sizeof(*pdata->power), 0,
      0, 0);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 return 0;
}
