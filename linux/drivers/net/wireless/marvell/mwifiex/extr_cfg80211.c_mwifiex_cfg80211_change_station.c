
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_parameters {int sta_flags_set; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {scalar_t__ bss_type; struct station_parameters* sta_params; int media_connected; } ;


 int BIT (int ) ;
 int ENOTSUPP ;
 scalar_t__ MWIFIEX_BSS_TYPE_STA ;
 int MWIFIEX_TDLS_CONFIG_LINK ;
 int NL80211_STA_FLAG_TDLS_PEER ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_tdls_oper (struct mwifiex_private*,int const*,int ) ;

__attribute__((used)) static int
mwifiex_cfg80211_change_station(struct wiphy *wiphy, struct net_device *dev,
    const u8 *mac,
    struct station_parameters *params)
{
 int ret;
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);


 if (!(params->sta_flags_set & BIT(NL80211_STA_FLAG_TDLS_PEER)))
  return -ENOTSUPP;


 if ((priv->bss_type != MWIFIEX_BSS_TYPE_STA) || !priv->media_connected)
  return -ENOTSUPP;

 priv->sta_params = params;

 ret = mwifiex_tdls_oper(priv, mac, MWIFIEX_TDLS_CONFIG_LINK);
 priv->sta_params = ((void*)0);

 return ret;
}
