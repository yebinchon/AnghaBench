
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {scalar_t__ bss_mode; int adapter; int cfg_bssid; int netdev; } ;
struct TYPE_2__ {int chan; } ;
struct cfg80211_ibss_params {TYPE_1__ chandef; int privacy; int bssid; scalar_t__ ssid; int ssid_len; } ;


 int ERROR ;
 int GFP_KERNEL ;
 int MSG ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int cfg80211_ibss_joined (int ,int ,int ,int ) ;
 int mwifiex_cfg80211_assoc (struct mwifiex_private*,int ,scalar_t__,int ,scalar_t__,int ,int *,int ) ;
 int mwifiex_dbg (int ,int ,char*,...) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_set_ibss_params (struct mwifiex_private*,struct cfg80211_ibss_params*) ;

__attribute__((used)) static int
mwifiex_cfg80211_join_ibss(struct wiphy *wiphy, struct net_device *dev,
      struct cfg80211_ibss_params *params)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 int ret = 0;

 if (priv->bss_mode != NL80211_IFTYPE_ADHOC) {
  mwifiex_dbg(priv->adapter, ERROR,
       "request to join ibss received\t"
       "when station is not in ibss mode\n");
  goto done;
 }

 mwifiex_dbg(priv->adapter, MSG,
      "info: trying to join to %.*s and bssid %pM\n",
      params->ssid_len, (char *)params->ssid, params->bssid);

 mwifiex_set_ibss_params(priv, params);

 ret = mwifiex_cfg80211_assoc(priv, params->ssid_len, params->ssid,
         params->bssid, priv->bss_mode,
         params->chandef.chan, ((void*)0),
         params->privacy);
done:
 if (!ret) {
  cfg80211_ibss_joined(priv->netdev, priv->cfg_bssid,
         params->chandef.chan, GFP_KERNEL);
  mwifiex_dbg(priv->adapter, MSG,
       "info: joined/created adhoc network with bssid\t"
       "%pM successfully\n", priv->cfg_bssid);
 } else {
  mwifiex_dbg(priv->adapter, ERROR,
       "info: failed creating/joining adhoc network\n");
 }

 return ret;
}
