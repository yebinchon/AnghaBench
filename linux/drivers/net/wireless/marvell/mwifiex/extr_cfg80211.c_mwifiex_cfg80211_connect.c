
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int wiphy; scalar_t__ current_bss; } ;
struct mwifiex_private {int scan_block; scalar_t__ bss_type; int cfg_bssid; int netdev; struct mwifiex_adapter* adapter; int bss_mode; TYPE_1__ wdev; } ;
struct mwifiex_adapter {scalar_t__ auto_tdls; int fw_cap_info; int work_flags; } ;
struct cfg80211_connect_params {int channel; int bssid; scalar_t__ ssid; scalar_t__ ssid_len; } ;


 int EALREADY ;
 int EFAULT ;
 int EINVAL ;
 int ERROR ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 int GFP_KERNEL ;
 int INFO ;
 scalar_t__ ISSUPP_TDLS_ENABLED (int ) ;
 int MSG ;
 scalar_t__ MWIFIEX_BSS_ROLE_STA ;
 scalar_t__ MWIFIEX_BSS_TYPE_STA ;
 int MWIFIEX_IS_CMD_TIMEDOUT ;
 int MWIFIEX_SURPRISE_REMOVED ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int cfg80211_connect_result (int ,int ,int *,int ,int *,int ,int,int ) ;
 int cfg80211_sched_scan_stopped_rtnl (int ,int ) ;
 int eth_zero_addr (int ) ;
 int mwifiex_cfg80211_assoc (struct mwifiex_private*,scalar_t__,scalar_t__,int ,int ,int ,struct cfg80211_connect_params*,int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int,...) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_setup_auto_tdls_timer (struct mwifiex_private*) ;
 int mwifiex_stop_bg_scan (struct mwifiex_private*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
mwifiex_cfg80211_connect(struct wiphy *wiphy, struct net_device *dev,
    struct cfg80211_connect_params *sme)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 struct mwifiex_adapter *adapter = priv->adapter;
 int ret;

 if (GET_BSS_ROLE(priv) != MWIFIEX_BSS_ROLE_STA) {
  mwifiex_dbg(adapter, ERROR,
       "%s: reject infra assoc request in non-STA role\n",
       dev->name);
  return -EINVAL;
 }

 if (priv->wdev.current_bss) {
  mwifiex_dbg(adapter, ERROR,
       "%s: already connected\n", dev->name);
  return -EALREADY;
 }

 if (priv->scan_block)
  priv->scan_block = 0;

 if (test_bit(MWIFIEX_SURPRISE_REMOVED, &adapter->work_flags) ||
     test_bit(MWIFIEX_IS_CMD_TIMEDOUT, &adapter->work_flags)) {
  mwifiex_dbg(adapter, ERROR,
       "%s: Ignore connection.\t"
       "Card removed or FW in bad state\n",
       dev->name);
  return -EFAULT;
 }

 mwifiex_dbg(adapter, INFO,
      "info: Trying to associate to %.*s and bssid %pM\n",
      (int)sme->ssid_len, (char *)sme->ssid, sme->bssid);

 if (!mwifiex_stop_bg_scan(priv))
  cfg80211_sched_scan_stopped_rtnl(priv->wdev.wiphy, 0);

 ret = mwifiex_cfg80211_assoc(priv, sme->ssid_len, sme->ssid, sme->bssid,
         priv->bss_mode, sme->channel, sme, 0);
 if (!ret) {
  cfg80211_connect_result(priv->netdev, priv->cfg_bssid, ((void*)0), 0,
     ((void*)0), 0, WLAN_STATUS_SUCCESS,
     GFP_KERNEL);
  mwifiex_dbg(priv->adapter, MSG,
       "info: associated to bssid %pM successfully\n",
       priv->cfg_bssid);
  if (ISSUPP_TDLS_ENABLED(priv->adapter->fw_cap_info) &&
      priv->adapter->auto_tdls &&
      priv->bss_type == MWIFIEX_BSS_TYPE_STA)
   mwifiex_setup_auto_tdls_timer(priv);
 } else {
  mwifiex_dbg(priv->adapter, ERROR,
       "info: association to bssid %pM failed\n",
       priv->cfg_bssid);
  eth_zero_addr(priv->cfg_bssid);

  if (ret > 0)
   cfg80211_connect_result(priv->netdev, priv->cfg_bssid,
      ((void*)0), 0, ((void*)0), 0, ret,
      GFP_KERNEL);
  else
   cfg80211_connect_result(priv->netdev, priv->cfg_bssid,
      ((void*)0), 0, ((void*)0), 0,
      WLAN_STATUS_UNSPECIFIED_FAILURE,
      GFP_KERNEL);
 }

 return 0;
}
