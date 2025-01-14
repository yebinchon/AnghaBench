
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct ssb_sprom {int gpio0; int gpio1; int gpio2; int gpio3; } ;
struct gpio_chip {unsigned int base; } ;
struct brcms_led {int gpio; int active_low; unsigned int name; } ;
struct TYPE_12__ {unsigned int name; int brightness_set; int default_trigger; } ;
struct brcms_info {struct brcms_led radio_led; int wiphy; TYPE_6__ led_dev; TYPE_5__* pub; TYPE_4__* wlc; } ;
struct bcma_drv_cc {struct gpio_chip gpio; } ;
struct TYPE_11__ {int ieee_hw; } ;
struct TYPE_10__ {TYPE_3__* hw; } ;
struct TYPE_9__ {TYPE_2__* d11core; } ;
struct TYPE_8__ {TYPE_1__* bus; } ;
struct TYPE_7__ {struct ssb_sprom sprom; struct bcma_drv_cc drv_cc; } ;


 int BRCMS_LED_AL_MASK ;
 int BRCMS_LED_BEH_MASK ;
 int BRCMS_LED_NO ;
 int BRCMS_LED_RADIO ;
 int ENODEV ;
 int GPIOF_OUT_INIT_HIGH ;
 int GPIOF_OUT_INIT_LOW ;
 int brcms_led_brightness_set ;
 int gpio_direction_output (unsigned int,int) ;
 int gpio_is_valid (unsigned int) ;
 int gpio_request_one (unsigned int,int ,char*) ;
 int ieee80211_get_radio_led_name (int ) ;
 int led_classdev_register (int ,TYPE_6__*) ;
 int snprintf (unsigned int,int,char*,char*) ;
 int wiphy_dev (int ) ;
 int wiphy_err (int ,char*,unsigned int,int) ;
 int wiphy_info (int ,char*,unsigned int,unsigned int) ;
 char* wiphy_name (int ) ;

int brcms_led_register(struct brcms_info *wl)
{
 int i, err;
 struct brcms_led *radio_led = &wl->radio_led;

 struct bcma_drv_cc *cc_drv = &wl->wlc->hw->d11core->bus->drv_cc;
 struct gpio_chip *bcma_gpio = &cc_drv->gpio;
 struct ssb_sprom *sprom = &wl->wlc->hw->d11core->bus->sprom;
 u8 *leds[] = { &sprom->gpio0,
  &sprom->gpio1,
  &sprom->gpio2,
  &sprom->gpio3 };
 unsigned gpio = -1;
 bool active_low = 0;


 radio_led->gpio = -1;
 radio_led->active_low = 0;

 if (!bcma_gpio || !gpio_is_valid(bcma_gpio->base))
  return -ENODEV;


 for (i = 0; i < BRCMS_LED_NO; i++) {
  u8 led = *leds[i];
  if ((led & BRCMS_LED_BEH_MASK) == BRCMS_LED_RADIO) {
   gpio = bcma_gpio->base + i;
   if (led & BRCMS_LED_AL_MASK)
    active_low = 1;
   break;
  }
 }

 if (gpio == -1 || !gpio_is_valid(gpio))
  return -ENODEV;


 err = gpio_request_one(gpio,
    active_low ? GPIOF_OUT_INIT_HIGH
     : GPIOF_OUT_INIT_LOW,
    "radio on");
 if (err) {
  wiphy_err(wl->wiphy, "requesting led gpio %d failed (err: %d)\n",
     gpio, err);
  return err;
 }
 err = gpio_direction_output(gpio, 1);
 if (err) {
  wiphy_err(wl->wiphy, "cannot set led gpio %d to output (err: %d)\n",
     gpio, err);
  return err;
 }

 snprintf(wl->radio_led.name, sizeof(wl->radio_led.name),
   "brcmsmac-%s:radio", wiphy_name(wl->wiphy));

 wl->led_dev.name = wl->radio_led.name;
 wl->led_dev.default_trigger =
  ieee80211_get_radio_led_name(wl->pub->ieee_hw);
 wl->led_dev.brightness_set = brcms_led_brightness_set;
 err = led_classdev_register(wiphy_dev(wl->wiphy), &wl->led_dev);

 if (err) {
  wiphy_err(wl->wiphy, "cannot register led device: %s (err: %d)\n",
     wl->radio_led.name, err);
  return err;
 }

 wiphy_info(wl->wiphy, "registered radio enabled led device: %s gpio: %d\n",
     wl->radio_led.name,
     gpio);
 radio_led->gpio = gpio;
 radio_led->active_low = active_low;

 return 0;
}
