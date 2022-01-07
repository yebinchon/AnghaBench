
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wiphy {int interface_modes; int reg_notifier; int flags; int n_iface_combinations; int iface_combinations; } ;
struct mt76_bus_ops {int rmw; int wr; int rr; } ;
struct mt7603_vif {int dummy; } ;
struct mt7603_sta {int dummy; } ;
struct TYPE_5__ {int sband; } ;
struct TYPE_4__ {int blink_set; int brightness_set; } ;
struct TYPE_6__ {int antenna_mask; TYPE_2__ sband_2g; TYPE_1__ led_cdev; int pre_tbtt_tasklet; int mac_work; struct mt76_bus_ops* bus; int dev; } ;
struct mt7603_dev {int slottime; TYPE_3__ mt76; int ps_lock; struct mt76_bus_ops* bus_ops; } ;
struct ieee80211_hw {int queues; int max_rates; int max_report_rates; int max_rate_tries; int sta_data_size; int vif_data_size; struct wiphy* wiphy; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int) ;
 int CONFIG_MT76_LEDS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ MT_EFUSE_BASE ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 int SUPPORTS_REORDERING_BUFFER ;
 int TX_STATUS_NO_AMPDU_LEN ;
 int WIPHY_FLAG_HAS_CHANNEL_SWITCH ;
 struct mt76_bus_ops* devm_kmemdup (int ,struct mt76_bus_ops*,int,int ) ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 int if_comb ;
 int mt7603_init_debugfs (struct mt7603_dev*) ;
 int mt7603_init_hardware (struct mt7603_dev*) ;
 int mt7603_init_txpower (struct mt7603_dev*,int *) ;
 int mt7603_led_set_blink ;
 int mt7603_led_set_brightness ;
 int mt7603_mac_work ;
 int mt7603_pre_tbtt_tasklet ;
 int mt7603_rates ;
 int mt7603_regd_notifier ;
 int mt7603_rmw ;
 int mt7603_rr ;
 int mt7603_wr ;
 struct ieee80211_hw* mt76_hw (struct mt7603_dev*) ;
 int mt76_register_device (TYPE_3__*,int,int ,int ) ;
 int mt76_rr (struct mt7603_dev*,scalar_t__) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

int mt7603_register_device(struct mt7603_dev *dev)
{
 struct mt76_bus_ops *bus_ops;
 struct ieee80211_hw *hw = mt76_hw(dev);
 struct wiphy *wiphy = hw->wiphy;
 int ret;

 dev->bus_ops = dev->mt76.bus;
 bus_ops = devm_kmemdup(dev->mt76.dev, dev->bus_ops, sizeof(*bus_ops),
          GFP_KERNEL);
 if (!bus_ops)
  return -ENOMEM;

 bus_ops->rr = mt7603_rr;
 bus_ops->wr = mt7603_wr;
 bus_ops->rmw = mt7603_rmw;
 dev->mt76.bus = bus_ops;

 spin_lock_init(&dev->ps_lock);

 INIT_DELAYED_WORK(&dev->mt76.mac_work, mt7603_mac_work);
 tasklet_init(&dev->mt76.pre_tbtt_tasklet, mt7603_pre_tbtt_tasklet,
       (unsigned long)dev);


 dev->mt76.antenna_mask = 3;
 if (mt76_rr(dev, MT_EFUSE_BASE + 0x64) & BIT(4))
  dev->mt76.antenna_mask = 1;

 dev->slottime = 9;

 ret = mt7603_init_hardware(dev);
 if (ret)
  return ret;

 hw->queues = 4;
 hw->max_rates = 3;
 hw->max_report_rates = 7;
 hw->max_rate_tries = 11;

 hw->sta_data_size = sizeof(struct mt7603_sta);
 hw->vif_data_size = sizeof(struct mt7603_vif);

 wiphy->iface_combinations = if_comb;
 wiphy->n_iface_combinations = ARRAY_SIZE(if_comb);

 ieee80211_hw_set(hw, SUPPORTS_REORDERING_BUFFER);
 ieee80211_hw_set(hw, TX_STATUS_NO_AMPDU_LEN);


 if (IS_ENABLED(CONFIG_MT76_LEDS)) {
  dev->mt76.led_cdev.brightness_set = mt7603_led_set_brightness;
  dev->mt76.led_cdev.blink_set = mt7603_led_set_blink;
 }

 wiphy->interface_modes =
  BIT(NL80211_IFTYPE_STATION) |
  BIT(NL80211_IFTYPE_AP) |



  BIT(NL80211_IFTYPE_ADHOC);

 wiphy->flags |= WIPHY_FLAG_HAS_CHANNEL_SWITCH;

 wiphy->reg_notifier = mt7603_regd_notifier;

 ret = mt76_register_device(&dev->mt76, 1, mt7603_rates,
       ARRAY_SIZE(mt7603_rates));
 if (ret)
  return ret;

 mt7603_init_debugfs(dev);
 mt7603_init_txpower(dev, &dev->mt76.sband_2g.sband);

 return 0;
}
