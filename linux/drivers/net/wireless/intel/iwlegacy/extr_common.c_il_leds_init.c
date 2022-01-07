
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int max_brightness; int name; int default_trigger; int blink_set; int brightness_set; } ;
struct il_priv {int led_registered; TYPE_3__ led; TYPE_2__* pci_dev; TYPE_4__* hw; TYPE_1__* cfg; } ;
struct TYPE_9__ {int wiphy; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int led_mode; } ;


 int ARRAY_SIZE (int ) ;
 int GFP_KERNEL ;
 int IEEE80211_TPT_LEDTRIG_FL_CONNECTED ;



 int WARN_ON (int) ;
 int ieee80211_create_tpt_led_trigger (TYPE_4__*,int ,int ,int ) ;
 int ieee80211_get_radio_led_name (TYPE_4__*) ;
 int il_blink ;
 int il_led_blink_set ;
 int il_led_brightness_set ;
 int kasprintf (int ,char*,int ) ;
 int kfree (int ) ;
 int led_classdev_register (int *,TYPE_3__*) ;
 int led_mode ;
 int wiphy_name (int ) ;

void
il_leds_init(struct il_priv *il)
{
 int mode = led_mode;
 int ret;

 if (mode == 129)
  mode = il->cfg->led_mode;

 il->led.name =
     kasprintf(GFP_KERNEL, "%s-led", wiphy_name(il->hw->wiphy));
 il->led.brightness_set = il_led_brightness_set;
 il->led.blink_set = il_led_blink_set;
 il->led.max_brightness = 1;

 switch (mode) {
 case 129:
  WARN_ON(1);
  break;
 case 130:
  il->led.default_trigger =
      ieee80211_create_tpt_led_trigger(il->hw,
           IEEE80211_TPT_LEDTRIG_FL_CONNECTED,
           il_blink,
           ARRAY_SIZE(il_blink));
  break;
 case 128:
  il->led.default_trigger = ieee80211_get_radio_led_name(il->hw);
  break;
 }

 ret = led_classdev_register(&il->pci_dev->dev, &il->led);
 if (ret) {
  kfree(il->led.name);
  return;
 }

 il->led_registered = 1;
}
