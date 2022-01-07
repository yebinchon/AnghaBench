
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int max_brightness; int name; int default_trigger; int brightness_set; } ;
struct iwl_mvm {int init_status; TYPE_2__ led; TYPE_1__* trans; TYPE_4__* hw; } ;
struct TYPE_8__ {int wiphy; } ;
struct TYPE_7__ {int led_mode; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_INFO (struct iwl_mvm*,char*) ;




 int IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE ;
 int ieee80211_get_radio_led_name (TYPE_4__*) ;
 int iwl_led_brightness_set ;
 TYPE_3__ iwlwifi_mod_params ;
 int kasprintf (int ,char*,int ) ;
 int kfree (int ) ;
 int led_classdev_register (int ,TYPE_2__*) ;
 int wiphy_name (int ) ;

int iwl_mvm_leds_init(struct iwl_mvm *mvm)
{
 int mode = iwlwifi_mod_params.led_mode;
 int ret;

 switch (mode) {
 case 131:
  IWL_ERR(mvm, "Blink led mode not supported, used default\n");

 case 130:
 case 128:
  mode = 128;
  break;
 case 129:
  IWL_INFO(mvm, "Led disabled\n");
  return 0;
 default:
  return -EINVAL;
 }

 mvm->led.name = kasprintf(GFP_KERNEL, "%s-led",
       wiphy_name(mvm->hw->wiphy));
 mvm->led.brightness_set = iwl_led_brightness_set;
 mvm->led.max_brightness = 1;

 if (mode == 128)
  mvm->led.default_trigger =
   ieee80211_get_radio_led_name(mvm->hw);

 ret = led_classdev_register(mvm->trans->dev, &mvm->led);
 if (ret) {
  kfree(mvm->led.name);
  IWL_INFO(mvm, "Failed to enable led\n");
  return ret;
 }

 mvm->init_status |= IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE;
 return 0;
}
