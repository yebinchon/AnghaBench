
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int band; } ;
struct mwifiex_private {TYPE_1__ curr_bss_params; int media_connected; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {scalar_t__ hw_dev_mcs_support; scalar_t__ fw_api_ver; } ;
struct cfg80211_bitrate_mask {TYPE_2__* control; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
typedef int bitmap_rates ;
struct TYPE_4__ {int legacy; int* ht_mcs; int* vht_mcs; } ;


 int EINVAL ;
 int ERROR ;
 scalar_t__ HT_STREAM_2X2 ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_TX_RATE_CFG ;
 int MAX_BITMAP_RATES_SIZE ;
 scalar_t__ MWIFIEX_FW_V15 ;
 int NL80211_BAND_2GHZ ;
 int memset (int*,int ,int) ;
 int mwifiex_band_to_radio_type (int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int*,int) ;

__attribute__((used)) static int mwifiex_cfg80211_set_bitrate_mask(struct wiphy *wiphy,
    struct net_device *dev,
    const u8 *peer,
    const struct cfg80211_bitrate_mask *mask)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 u16 bitmap_rates[MAX_BITMAP_RATES_SIZE];
 enum nl80211_band band;
 struct mwifiex_adapter *adapter = priv->adapter;

 if (!priv->media_connected) {
  mwifiex_dbg(adapter, ERROR,
       "Can not set Tx data rate in disconnected state\n");
  return -EINVAL;
 }

 band = mwifiex_band_to_radio_type(priv->curr_bss_params.band);

 memset(bitmap_rates, 0, sizeof(bitmap_rates));


 if (band == NL80211_BAND_2GHZ)
  bitmap_rates[0] = mask->control[band].legacy & 0x000f;


 if (band == NL80211_BAND_2GHZ)
  bitmap_rates[1] = (mask->control[band].legacy & 0x0ff0) >> 4;
 else
  bitmap_rates[1] = mask->control[band].legacy;


 bitmap_rates[2] = mask->control[band].ht_mcs[0];
 if (adapter->hw_dev_mcs_support == HT_STREAM_2X2)
  bitmap_rates[2] |= mask->control[band].ht_mcs[1] << 8;


 if (adapter->fw_api_ver == MWIFIEX_FW_V15) {
  bitmap_rates[10] = mask->control[band].vht_mcs[0];
  if (adapter->hw_dev_mcs_support == HT_STREAM_2X2)
   bitmap_rates[11] = mask->control[band].vht_mcs[1];
 }

 return mwifiex_send_cmd(priv, HostCmd_CMD_TX_RATE_CFG,
    HostCmd_ACT_GEN_SET, 0, bitmap_rates, 1);
}
