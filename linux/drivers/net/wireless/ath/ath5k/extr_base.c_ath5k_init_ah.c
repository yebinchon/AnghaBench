
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {int extra_tx_headroom; int max_rates; int vif_data_size; int max_rate_tries; TYPE_2__* wiphy; } ;
struct ath_common {int clockrate; int cachelsz; int cc_lock; struct ath5k_hw* priv; struct ieee80211_hw* hw; struct ath5k_hw* ah; struct ath_bus_ops const* bus_ops; int * ops; } ;
struct ath_bus_ops {int dummy; } ;
struct ath5k_vif {int dummy; } ;
struct TYPE_3__ {int cap_mode; scalar_t__ cap_has_mrr_support; } ;
struct ath5k_hw {int bintval; int irq; int status; scalar_t__ ah_radio_2ghz_revision; scalar_t__ ah_radio_5ghz_revision; TYPE_1__ ah_capabilities; int ah_single_chip; int ah_phy_revision; scalar_t__ ah_mac_srev; int irqlock; int block; int txbuflock; int rxbuflock; int lock; int opmode; int dev; struct ieee80211_hw* hw; } ;
struct TYPE_4__ {int interface_modes; int n_iface_combinations; int available_antennas_tx; int available_antennas_rx; int flags; int * iface_combinations; } ;


 int AR5K_INIT_RETRY_LONG ;
 int AR5K_INIT_RETRY_SHORT ;
 int AR5K_MODE_11A ;
 int AR5K_MODE_11B ;
 int AR5K_VERSION_MAC ;
 int AR5K_VERSION_RAD ;
 int ATH5K_ERR (struct ath5k_hw*,char*) ;
 int ATH5K_INFO (struct ath5k_hw*,char*,int ,scalar_t__,...) ;
 int ATH_STAT_INVALID ;
 int BIT (int ) ;
 int HOST_BROADCAST_PS_BUFFERING ;
 int IRQF_SHARED ;
 int MFP_CAPABLE ;
 int NL80211_EXT_FEATURE_CQM_RSSI_LIST ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 int REPORTS_TX_ACK_STATUS ;
 int RX_INCLUDES_FCS ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,int ) ;
 int SIGNAL_DBM ;
 int SUPPORTS_RC_TABLE ;
 int WIPHY_FLAG_IBSS_RSN ;
 int WIPHY_FLAG_SUPPORTS_5_10_MHZ ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int ath5k_chip_name (int ,scalar_t__) ;
 int ath5k_common_ops ;
 int ath5k_debug_init_device (struct ath5k_hw*) ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ath5k_hw_deinit (struct ath5k_hw*) ;
 int ath5k_hw_init (struct ath5k_hw*) ;
 int ath5k_init (struct ieee80211_hw*) ;
 int ath5k_intr ;
 int ath5k_read_cachesize (struct ath_common*,int*) ;
 int free_irq (int ,struct ath5k_hw*) ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 int if_comb ;
 int max (int ,int ) ;
 int mutex_init (int *) ;
 int request_irq (int ,int ,int ,char*,struct ath5k_hw*) ;
 int spin_lock_init (int *) ;
 int test_bit (int ,int ) ;
 int wiphy_ext_feature_set (TYPE_2__*,int ) ;

int
ath5k_init_ah(struct ath5k_hw *ah, const struct ath_bus_ops *bus_ops)
{
 struct ieee80211_hw *hw = ah->hw;
 struct ath_common *common;
 int ret;
 int csz;


 SET_IEEE80211_DEV(hw, ah->dev);
 ieee80211_hw_set(hw, SUPPORTS_RC_TABLE);
 ieee80211_hw_set(hw, REPORTS_TX_ACK_STATUS);
 ieee80211_hw_set(hw, MFP_CAPABLE);
 ieee80211_hw_set(hw, SIGNAL_DBM);
 ieee80211_hw_set(hw, RX_INCLUDES_FCS);
 ieee80211_hw_set(hw, HOST_BROADCAST_PS_BUFFERING);

 hw->wiphy->interface_modes =
  BIT(NL80211_IFTYPE_AP) |
  BIT(NL80211_IFTYPE_STATION) |
  BIT(NL80211_IFTYPE_ADHOC) |
  BIT(NL80211_IFTYPE_MESH_POINT);

 hw->wiphy->iface_combinations = &if_comb;
 hw->wiphy->n_iface_combinations = 1;


 hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

 hw->wiphy->flags |= WIPHY_FLAG_SUPPORTS_5_10_MHZ;


 hw->wiphy->available_antennas_tx = 0x3;
 hw->wiphy->available_antennas_rx = 0x3;

 hw->extra_tx_headroom = 2;

 wiphy_ext_feature_set(hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);





 __set_bit(ATH_STAT_INVALID, ah->status);

 ah->opmode = NL80211_IFTYPE_STATION;
 ah->bintval = 1000;
 mutex_init(&ah->lock);
 spin_lock_init(&ah->rxbuflock);
 spin_lock_init(&ah->txbuflock);
 spin_lock_init(&ah->block);
 spin_lock_init(&ah->irqlock);


 ret = request_irq(ah->irq, ath5k_intr, IRQF_SHARED, "ath", ah);
 if (ret) {
  ATH5K_ERR(ah, "request_irq failed\n");
  goto err;
 }

 common = ath5k_hw_common(ah);
 common->ops = &ath5k_common_ops;
 common->bus_ops = bus_ops;
 common->ah = ah;
 common->hw = hw;
 common->priv = ah;
 common->clockrate = 40;





 ath5k_read_cachesize(common, &csz);
 common->cachelsz = csz << 2;

 spin_lock_init(&common->cc_lock);


 ret = ath5k_hw_init(ah);
 if (ret)
  goto err_irq;


 if (ah->ah_capabilities.cap_has_mrr_support) {
  hw->max_rates = 4;
  hw->max_rate_tries = max(AR5K_INIT_RETRY_SHORT,
      AR5K_INIT_RETRY_LONG);
 }

 hw->vif_data_size = sizeof(struct ath5k_vif);


 ret = ath5k_init(hw);
 if (ret)
  goto err_ah;

 ATH5K_INFO(ah, "Atheros AR%s chip found (MAC: 0x%x, PHY: 0x%x)\n",
   ath5k_chip_name(AR5K_VERSION_MAC, ah->ah_mac_srev),
     ah->ah_mac_srev,
     ah->ah_phy_revision);

 if (!ah->ah_single_chip) {

  if (ah->ah_radio_5ghz_revision &&
   !ah->ah_radio_2ghz_revision) {

   if (!test_bit(AR5K_MODE_11A,
    ah->ah_capabilities.cap_mode)) {
    ATH5K_INFO(ah, "RF%s 2GHz radio found (0x%x)\n",
     ath5k_chip_name(AR5K_VERSION_RAD,
      ah->ah_radio_5ghz_revision),
      ah->ah_radio_5ghz_revision);


   } else if (!test_bit(AR5K_MODE_11B,
    ah->ah_capabilities.cap_mode)) {
    ATH5K_INFO(ah, "RF%s 5GHz radio found (0x%x)\n",
     ath5k_chip_name(AR5K_VERSION_RAD,
      ah->ah_radio_5ghz_revision),
      ah->ah_radio_5ghz_revision);

   } else {
    ATH5K_INFO(ah, "RF%s multiband radio found"
     " (0x%x)\n",
     ath5k_chip_name(AR5K_VERSION_RAD,
      ah->ah_radio_5ghz_revision),
      ah->ah_radio_5ghz_revision);
   }
  }


  else if (ah->ah_radio_5ghz_revision &&
    ah->ah_radio_2ghz_revision) {
   ATH5K_INFO(ah, "RF%s 5GHz radio found (0x%x)\n",
    ath5k_chip_name(AR5K_VERSION_RAD,
     ah->ah_radio_5ghz_revision),
     ah->ah_radio_5ghz_revision);
   ATH5K_INFO(ah, "RF%s 2GHz radio found (0x%x)\n",
    ath5k_chip_name(AR5K_VERSION_RAD,
     ah->ah_radio_2ghz_revision),
     ah->ah_radio_2ghz_revision);
  }
 }

 ath5k_debug_init_device(ah);


 __clear_bit(ATH_STAT_INVALID, ah->status);

 return 0;
err_ah:
 ath5k_hw_deinit(ah);
err_irq:
 free_irq(ah->irq, ah);
err:
 return ret;
}
