
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_sprom {int il0mac; int et1mac; } ;
struct ieee80211_hw {int max_rates; TYPE_1__* wiphy; } ;
struct b43_wl {int hw_registered; scalar_t__* tx_queue_stopped; int * tx_queue; int tx_work; int txpower_adjust_work; int beacon_update_trigger; int beacon_lock; int hardirq_lock; int mutex; struct ieee80211_hw* hw; } ;
struct b43_bus_dev {int chip_id; int core_rev; int dev; struct ssb_sprom* bus_sprom; } ;
struct TYPE_2__ {int interface_modes; int flags; } ;


 int ARRAY_SIZE (char*) ;
 int B43_QOS_QUEUE_NUM ;
 int BIT (int ) ;
 int ENOMEM ;
 struct b43_wl* ERR_PTR (int ) ;
 int INIT_WORK (int *,int ) ;
 int NL80211_EXT_FEATURE_CQM_RSSI_LIST ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 int NL80211_IFTYPE_WDS ;
 int RX_INCLUDES_FCS ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,int ) ;
 int SET_IEEE80211_PERM_ADDR (struct ieee80211_hw*,int ) ;
 int SIGNAL_DBM ;
 int WIPHY_FLAG_IBSS_RSN ;
 int b43_beacon_update_trigger_work ;
 int b43_hw_ops ;
 int b43_phy_txpower_adjust_work ;
 int b43_tx_work ;
 int b43err (int *,char*) ;
 int b43info (struct b43_wl*,char*,char*,int ) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock_init (int *) ;
 int wiphy_ext_feature_set (TYPE_1__*,int ) ;

__attribute__((used)) static struct b43_wl *b43_wireless_init(struct b43_bus_dev *dev)
{
 struct ssb_sprom *sprom = dev->bus_sprom;
 struct ieee80211_hw *hw;
 struct b43_wl *wl;
 char chip_name[6];
 int queue_num;

 hw = ieee80211_alloc_hw(sizeof(*wl), &b43_hw_ops);
 if (!hw) {
  b43err(((void*)0), "Could not allocate ieee80211 device\n");
  return ERR_PTR(-ENOMEM);
 }
 wl = hw_to_b43_wl(hw);


 ieee80211_hw_set(hw, RX_INCLUDES_FCS);
 ieee80211_hw_set(hw, SIGNAL_DBM);

 hw->wiphy->interface_modes =
  BIT(NL80211_IFTYPE_AP) |
  BIT(NL80211_IFTYPE_MESH_POINT) |
  BIT(NL80211_IFTYPE_STATION) |



  BIT(NL80211_IFTYPE_ADHOC);

 hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

 wiphy_ext_feature_set(hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

 wl->hw_registered = 0;
 hw->max_rates = 2;
 SET_IEEE80211_DEV(hw, dev->dev);
 if (is_valid_ether_addr(sprom->et1mac))
  SET_IEEE80211_PERM_ADDR(hw, sprom->et1mac);
 else
  SET_IEEE80211_PERM_ADDR(hw, sprom->il0mac);


 wl->hw = hw;
 mutex_init(&wl->mutex);
 spin_lock_init(&wl->hardirq_lock);
 spin_lock_init(&wl->beacon_lock);
 INIT_WORK(&wl->beacon_update_trigger, b43_beacon_update_trigger_work);
 INIT_WORK(&wl->txpower_adjust_work, b43_phy_txpower_adjust_work);
 INIT_WORK(&wl->tx_work, b43_tx_work);


 for (queue_num = 0; queue_num < B43_QOS_QUEUE_NUM; queue_num++) {
  skb_queue_head_init(&wl->tx_queue[queue_num]);
  wl->tx_queue_stopped[queue_num] = 0;
 }

 snprintf(chip_name, ARRAY_SIZE(chip_name),
   (dev->chip_id > 0x9999) ? "%d" : "%04X", dev->chip_id);
 b43info(wl, "Broadcom %s WLAN found (core revision %u)\n", chip_name,
  dev->core_rev);
 return wl;
}
