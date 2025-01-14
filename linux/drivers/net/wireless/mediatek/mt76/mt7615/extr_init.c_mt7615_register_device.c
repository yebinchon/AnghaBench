
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


struct wiphy {int interface_modes; int flags; int reg_notifier; int n_iface_combinations; int iface_combinations; } ;
struct mt7615_vif {int dummy; } ;
struct mt7615_sta {int dummy; } ;
struct TYPE_8__ {int cap; } ;
struct TYPE_7__ {int cap; } ;
struct TYPE_12__ {TYPE_2__ vht_cap; TYPE_1__ ht_cap; } ;
struct TYPE_10__ {TYPE_6__ sband; } ;
struct TYPE_9__ {TYPE_6__ sband; } ;
struct TYPE_11__ {int chainmask; int antenna_mask; TYPE_4__ sband_5g; TYPE_3__ sband_2g; int mac_work; } ;
struct mt7615_dev {int dfs_state; TYPE_5__ mt76; } ;
struct ieee80211_hw {int queues; int max_rates; int max_report_rates; int max_rate_tries; int sta_data_size; int vif_data_size; int max_tx_fragments; struct wiphy* wiphy; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int ) ;
 int IEEE80211_HT_CAP_LDPC_CODING ;
 int IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK ;
 int IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454 ;
 int IEEE80211_VHT_CAP_SHORT_GI_160 ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int MT_TXP_MAX_BUF_NUM ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 int SUPPORTS_REORDERING_BUFFER ;
 int TX_STATUS_NO_AMPDU_LEN ;
 int WIPHY_FLAG_HAS_CHANNEL_SWITCH ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 int if_comb ;
 int mt7615_init_debugfs (struct mt7615_dev*) ;
 int mt7615_init_hardware (struct mt7615_dev*) ;
 int mt7615_init_txpower (struct mt7615_dev*,TYPE_6__*) ;
 int mt7615_mac_work ;
 int mt7615_rates ;
 int mt7615_regd_notifier ;
 struct ieee80211_hw* mt76_hw (struct mt7615_dev*) ;
 int mt76_register_device (TYPE_5__*,int,int ,int ) ;

int mt7615_register_device(struct mt7615_dev *dev)
{
 struct ieee80211_hw *hw = mt76_hw(dev);
 struct wiphy *wiphy = hw->wiphy;
 int ret;

 ret = mt7615_init_hardware(dev);
 if (ret)
  return ret;

 INIT_DELAYED_WORK(&dev->mt76.mac_work, mt7615_mac_work);

 hw->queues = 4;
 hw->max_rates = 3;
 hw->max_report_rates = 7;
 hw->max_rate_tries = 11;

 hw->sta_data_size = sizeof(struct mt7615_sta);
 hw->vif_data_size = sizeof(struct mt7615_vif);

 wiphy->iface_combinations = if_comb;
 wiphy->n_iface_combinations = ARRAY_SIZE(if_comb);
 wiphy->reg_notifier = mt7615_regd_notifier;
 wiphy->flags |= WIPHY_FLAG_HAS_CHANNEL_SWITCH;

 ieee80211_hw_set(hw, SUPPORTS_REORDERING_BUFFER);
 ieee80211_hw_set(hw, TX_STATUS_NO_AMPDU_LEN);

 dev->mt76.sband_2g.sband.ht_cap.cap |= IEEE80211_HT_CAP_LDPC_CODING;
 dev->mt76.sband_5g.sband.ht_cap.cap |= IEEE80211_HT_CAP_LDPC_CODING;
 dev->mt76.sband_5g.sband.vht_cap.cap |=
   IEEE80211_VHT_CAP_SHORT_GI_160 |
   IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454 |
   IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK |
   IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ;
 dev->mt76.chainmask = 0x404;
 dev->mt76.antenna_mask = 0xf;
 dev->dfs_state = -1;

 wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |



     BIT(NL80211_IFTYPE_AP);

 ret = mt76_register_device(&dev->mt76, 1, mt7615_rates,
       ARRAY_SIZE(mt7615_rates));
 if (ret)
  return ret;

 mt7615_init_txpower(dev, &dev->mt76.sband_2g.sband);
 mt7615_init_txpower(dev, &dev->mt76.sband_5g.sband);

 hw->max_tx_fragments = MT_TXP_MAX_BUF_NUM;

 return mt7615_init_debugfs(dev);
}
