
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int default_trigger; int name; int blink_set; int brightness_set; } ;
struct mt76_dev {int led_pin; TYPE_2__ led_cdev; TYPE_1__* dev; int led_al; int led_name; struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int wiphy; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int ARRAY_SIZE (int ) ;
 int IEEE80211_TPT_LEDTRIG_FL_RADIO ;
 int devm_led_classdev_register (TYPE_1__*,TYPE_2__*) ;
 int ieee80211_create_tpt_led_trigger (struct ieee80211_hw*,int ,int ,int ) ;
 int mt76_tpt_blink ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int snprintf (int ,int,char*,char*) ;
 char* wiphy_name (int ) ;

__attribute__((used)) static int mt76_led_init(struct mt76_dev *dev)
{
 struct device_node *np = dev->dev->of_node;
 struct ieee80211_hw *hw = dev->hw;
 int led_pin;

 if (!dev->led_cdev.brightness_set && !dev->led_cdev.blink_set)
  return 0;

 snprintf(dev->led_name, sizeof(dev->led_name),
   "mt76-%s", wiphy_name(hw->wiphy));

 dev->led_cdev.name = dev->led_name;
 dev->led_cdev.default_trigger =
  ieee80211_create_tpt_led_trigger(hw,
     IEEE80211_TPT_LEDTRIG_FL_RADIO,
     mt76_tpt_blink,
     ARRAY_SIZE(mt76_tpt_blink));

 np = of_get_child_by_name(np, "led");
 if (np) {
  if (!of_property_read_u32(np, "led-sources", &led_pin))
   dev->led_pin = led_pin;
  dev->led_al = of_property_read_bool(np, "led-active-low");
 }

 return devm_led_classdev_register(dev->dev, &dev->led_cdev);
}
