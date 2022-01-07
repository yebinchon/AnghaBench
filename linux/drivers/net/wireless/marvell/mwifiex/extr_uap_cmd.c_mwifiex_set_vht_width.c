
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int hw_dot_11ac_dev_cap; } ;
struct mwifiex_11ac_vht_cfg {int misc_config; void* mcs_rx_set; void* mcs_tx_set; int cap_info; int band_config; } ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;


 void* DEFAULT_VHT_MCS_SET ;
 void* DISABLE_VHT_MCS_SET ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_11AC_CFG ;
 int NL80211_CHAN_WIDTH_80 ;
 int VHT_BW_80_160_80P80 ;
 int VHT_CAP_UAP_ONLY ;
 int VHT_CFG_5GHZ ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_11ac_vht_cfg*,int) ;

void mwifiex_set_vht_width(struct mwifiex_private *priv,
      enum nl80211_chan_width width,
      bool ap_11ac_enable)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 struct mwifiex_11ac_vht_cfg vht_cfg;

 vht_cfg.band_config = VHT_CFG_5GHZ;
 vht_cfg.cap_info = adapter->hw_dot_11ac_dev_cap;

 if (!ap_11ac_enable) {
  vht_cfg.mcs_tx_set = DISABLE_VHT_MCS_SET;
  vht_cfg.mcs_rx_set = DISABLE_VHT_MCS_SET;
 } else {
  vht_cfg.mcs_tx_set = DEFAULT_VHT_MCS_SET;
  vht_cfg.mcs_rx_set = DEFAULT_VHT_MCS_SET;
 }

 vht_cfg.misc_config = VHT_CAP_UAP_ONLY;

 if (ap_11ac_enable && width >= NL80211_CHAN_WIDTH_80)
  vht_cfg.misc_config |= VHT_BW_80_160_80P80;

 mwifiex_send_cmd(priv, HostCmd_CMD_11AC_CFG,
    HostCmd_ACT_GEN_SET, 0, &vht_cfg, 1);

 return;
}
