
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct wiphy {int dummy; } ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct mwifiex_ds_ant_cfg {int tx_ant; int rx_ant; } ;
struct mwifiex_adapter {scalar_t__ hw_dev_mcs_support; int number_of_antenna; scalar_t__ user_dev_mcs_support; TYPE_3__* wiphy; int usr_dot_11ac_mcs_support; scalar_t__ is_hw_11ac_capable; } ;
struct ieee80211_sta_ht_cap {int mcs; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {TYPE_2__** bands; } ;
struct TYPE_5__ {struct ieee80211_sta_ht_cap ht_cap; } ;
struct TYPE_4__ {int number_of_antenna; } ;


 int BIT (int) ;
 int EOPNOTSUPP ;
 int GET_RXMCSSUPP (scalar_t__) ;
 scalar_t__ HT_STREAM_1X1 ;
 scalar_t__ HT_STREAM_2X2 ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_RF_ANTENNA ;
 int MWIFIEX_11AC_MCS_MAP_1X1 ;
 int MWIFIEX_11AC_MCS_MAP_2X2 ;
 int MWIFIEX_BSS_ROLE_ANY ;
 int NUM_NL80211_BANDS ;
 int RF_ANTENNA_AUTO ;
 int memset (int *,int,int) ;
 struct mwifiex_adapter* mwifiex_cfg80211_get_adapter (struct wiphy*) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_ant_cfg*,int) ;

__attribute__((used)) static int
mwifiex_cfg80211_set_antenna(struct wiphy *wiphy, u32 tx_ant, u32 rx_ant)
{
 struct mwifiex_adapter *adapter = mwifiex_cfg80211_get_adapter(wiphy);
 struct mwifiex_private *priv = mwifiex_get_priv(adapter,
       MWIFIEX_BSS_ROLE_ANY);
 struct mwifiex_ds_ant_cfg ant_cfg;

 if (!tx_ant || !rx_ant)
  return -EOPNOTSUPP;

 if (adapter->hw_dev_mcs_support != HT_STREAM_2X2) {



  if (tx_ant != rx_ant)
   return -EOPNOTSUPP;

  if ((tx_ant & (tx_ant - 1)) &&
      (tx_ant != BIT(adapter->number_of_antenna) - 1))
   return -EOPNOTSUPP;

  if ((tx_ant == BIT(adapter->number_of_antenna) - 1) &&
      (priv->adapter->number_of_antenna > 1)) {
   tx_ant = RF_ANTENNA_AUTO;
   rx_ant = RF_ANTENNA_AUTO;
  }
 } else {
  struct ieee80211_sta_ht_cap *ht_info;
  int rx_mcs_supp;
  enum nl80211_band band;

  if ((tx_ant == 0x1 && rx_ant == 0x1)) {
   adapter->user_dev_mcs_support = HT_STREAM_1X1;
   if (adapter->is_hw_11ac_capable)
    adapter->usr_dot_11ac_mcs_support =
      MWIFIEX_11AC_MCS_MAP_1X1;
  } else {
   adapter->user_dev_mcs_support = HT_STREAM_2X2;
   if (adapter->is_hw_11ac_capable)
    adapter->usr_dot_11ac_mcs_support =
      MWIFIEX_11AC_MCS_MAP_2X2;
  }

  for (band = 0; band < NUM_NL80211_BANDS; band++) {
   if (!adapter->wiphy->bands[band])
    continue;

   ht_info = &adapter->wiphy->bands[band]->ht_cap;
   rx_mcs_supp =
    GET_RXMCSSUPP(adapter->user_dev_mcs_support);
   memset(&ht_info->mcs, 0, adapter->number_of_antenna);
   memset(&ht_info->mcs, 0xff, rx_mcs_supp);
  }
 }

 ant_cfg.tx_ant = tx_ant;
 ant_cfg.rx_ant = rx_ant;

 return mwifiex_send_cmd(priv, HostCmd_CMD_RF_ANTENNA,
    HostCmd_ACT_GEN_SET, 0, &ant_cfg, 1);
}
