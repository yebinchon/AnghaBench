
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ wep_enabled; } ;
struct mwifiex_bssdescriptor {int channel; int mac_address; int ssid; } ;
struct TYPE_3__ {struct mwifiex_bssdescriptor bss_descriptor; } ;
struct mwifiex_private {TYPE_2__ sec_info; int bcn_nf_last; int adhoc_state; int min_tx_power_level; int max_tx_power_level; int media_connected; int bss_mode; TYPE_1__ curr_bss_params; struct mwifiex_adapter* adapter; } ;
struct mwifiex_bss_info {int wep_status; int is_deep_sleep; int is_hs_configured; int bcn_nf_last; int adhoc_state; int min_power_level; int max_power_level; int media_connected; int * country_code; int bss_chan; int bssid; int ssid; int bss_mode; } ;
struct mwifiex_adapter {int is_deep_sleep; int work_flags; int * country_code; } ;
struct cfg80211_ssid {int dummy; } ;


 int ETH_ALEN ;
 int IEEE80211_COUNTRY_STRING_LEN ;
 int MWIFIEX_IS_HS_CONFIGURED ;
 int memcpy (int *,int *,int) ;
 int test_bit (int ,int *) ;

int mwifiex_get_bss_info(struct mwifiex_private *priv,
    struct mwifiex_bss_info *info)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 struct mwifiex_bssdescriptor *bss_desc;

 if (!info)
  return -1;

 bss_desc = &priv->curr_bss_params.bss_descriptor;

 info->bss_mode = priv->bss_mode;

 memcpy(&info->ssid, &bss_desc->ssid, sizeof(struct cfg80211_ssid));

 memcpy(&info->bssid, &bss_desc->mac_address, ETH_ALEN);

 info->bss_chan = bss_desc->channel;

 memcpy(info->country_code, adapter->country_code,
        IEEE80211_COUNTRY_STRING_LEN);

 info->media_connected = priv->media_connected;

 info->max_power_level = priv->max_tx_power_level;
 info->min_power_level = priv->min_tx_power_level;

 info->adhoc_state = priv->adhoc_state;

 info->bcn_nf_last = priv->bcn_nf_last;

 if (priv->sec_info.wep_enabled)
  info->wep_status = 1;
 else
  info->wep_status = 0;

 info->is_hs_configured = test_bit(MWIFIEX_IS_HS_CONFIGURED,
       &adapter->work_flags);
 info->is_deep_sleep = adapter->is_deep_sleep;

 return 0;
}
