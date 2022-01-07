
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tx_frame_hdr {int dummy; } ;
struct ieee80211_hw {int queues; int max_listen_interval; int vif_data_size; int sta_data_size; int extra_tx_headroom; TYPE_2__* wiphy; } ;
struct htc_frame_hdr {int dummy; } ;
struct base_eep_header {int txMask; int rxMask; } ;
struct TYPE_3__ {int hw_caps; } ;
struct ath_hw {TYPE_1__ caps; } ;
struct ath_common {int macaddr; int * sbands; } ;
struct ath9k_htc_vif {int dummy; } ;
struct ath9k_htc_sta {int dummy; } ;
struct ath9k_htc_priv {struct ath_hw* ah; } ;
struct TYPE_4__ {int interface_modes; int n_iface_combinations; int flags; int available_antennas_tx; int available_antennas_rx; int ** bands; int * iface_combinations; } ;


 int AMPDU_AGGREGATION ;
 int ATH9K_HW_CAP_2GHZ ;
 int ATH9K_HW_CAP_5GHZ ;
 int BIT (int ) ;
 int DOESNT_SUPPORT_QOS_NDP ;
 int HAS_RATE_CONTROL ;
 int HOST_BROADCAST_PS_BUFFERING ;
 int MFP_CAPABLE ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int NL80211_EXT_FEATURE_CQM_RSSI_LIST ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_OCB ;
 int NL80211_IFTYPE_P2P_CLIENT ;
 int NL80211_IFTYPE_P2P_GO ;
 int NL80211_IFTYPE_STATION ;
 int PS_NULLFUNC_STACK ;
 int REPORTS_TX_ACK_STATUS ;
 int RX_INCLUDES_FCS ;
 int SET_IEEE80211_PERM_ADDR (struct ieee80211_hw*,int ) ;
 int SIGNAL_DBM ;
 int SPECTRUM_MGMT ;
 int SUPPORTS_PS ;
 int WIPHY_FLAG_HAS_CHANNEL_SWITCH ;
 int WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL ;
 int WIPHY_FLAG_IBSS_RSN ;
 int WIPHY_FLAG_PS_ON_BY_DEFAULT ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int ath9k_cmn_reload_chainmask (struct ath_hw*) ;
 struct base_eep_header* ath9k_htc_get_eeprom_base (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ ath9k_ps_enable ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 int if_comb ;
 int wiphy_ext_feature_set (TYPE_2__*,int ) ;

__attribute__((used)) static void ath9k_set_hw_capab(struct ath9k_htc_priv *priv,
          struct ieee80211_hw *hw)
{
 struct ath_hw *ah = priv->ah;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct base_eep_header *pBase;

 ieee80211_hw_set(hw, HOST_BROADCAST_PS_BUFFERING);
 ieee80211_hw_set(hw, MFP_CAPABLE);
 ieee80211_hw_set(hw, REPORTS_TX_ACK_STATUS);
 ieee80211_hw_set(hw, PS_NULLFUNC_STACK);
 ieee80211_hw_set(hw, RX_INCLUDES_FCS);
 ieee80211_hw_set(hw, HAS_RATE_CONTROL);
 ieee80211_hw_set(hw, SPECTRUM_MGMT);
 ieee80211_hw_set(hw, SIGNAL_DBM);
 ieee80211_hw_set(hw, AMPDU_AGGREGATION);
 ieee80211_hw_set(hw, DOESNT_SUPPORT_QOS_NDP);

 if (ath9k_ps_enable)
  ieee80211_hw_set(hw, SUPPORTS_PS);

 hw->wiphy->interface_modes =
  BIT(NL80211_IFTYPE_STATION) |
  BIT(NL80211_IFTYPE_ADHOC) |
  BIT(NL80211_IFTYPE_AP) |
  BIT(NL80211_IFTYPE_P2P_GO) |
  BIT(NL80211_IFTYPE_P2P_CLIENT) |
  BIT(NL80211_IFTYPE_MESH_POINT) |
  BIT(NL80211_IFTYPE_OCB);

 hw->wiphy->iface_combinations = &if_comb;
 hw->wiphy->n_iface_combinations = 1;

 hw->wiphy->flags &= ~WIPHY_FLAG_PS_ON_BY_DEFAULT;

 hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN |
       WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL |
       WIPHY_FLAG_HAS_CHANNEL_SWITCH;

 hw->wiphy->flags |= WIPHY_FLAG_SUPPORTS_TDLS;

 hw->queues = 4;
 hw->max_listen_interval = 1;

 hw->vif_data_size = sizeof(struct ath9k_htc_vif);
 hw->sta_data_size = sizeof(struct ath9k_htc_sta);


 hw->extra_tx_headroom = sizeof(struct tx_frame_hdr) +
  sizeof(struct htc_frame_hdr) + 4;

 if (priv->ah->caps.hw_caps & ATH9K_HW_CAP_2GHZ)
  hw->wiphy->bands[NL80211_BAND_2GHZ] =
   &common->sbands[NL80211_BAND_2GHZ];
 if (priv->ah->caps.hw_caps & ATH9K_HW_CAP_5GHZ)
  hw->wiphy->bands[NL80211_BAND_5GHZ] =
   &common->sbands[NL80211_BAND_5GHZ];

 ath9k_cmn_reload_chainmask(ah);

 pBase = ath9k_htc_get_eeprom_base(priv);
 if (pBase) {
  hw->wiphy->available_antennas_rx = pBase->rxMask;
  hw->wiphy->available_antennas_tx = pBase->txMask;
 }

 SET_IEEE80211_PERM_ADDR(hw, common->macaddr);

 wiphy_ext_feature_set(hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);
}
