
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {struct net_device* mesh_dev; } ;
struct TYPE_3__ {TYPE_2__* chan; } ;
struct cfg80211_ibss_params {int ssid_len; int ssid; int bssid; TYPE_1__ chandef; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_4__ {int hw_value; } ;


 int ENOTSUPP ;
 int EOPNOTSUPP ;
 int IEEE80211_BSS_TYPE_IBSS ;
 int IEEE80211_PRIVACY_ANY ;
 struct cfg80211_bss* cfg80211_get_bss (struct wiphy*,TYPE_2__*,int ,int ,int ,int ,int ) ;
 int cfg80211_put_bss (struct wiphy*,struct cfg80211_bss*) ;
 int lbs_ibss_join_existing (struct lbs_private*,struct cfg80211_ibss_params*,struct cfg80211_bss*) ;
 int lbs_ibss_start_new (struct lbs_private*,struct cfg80211_ibss_params*) ;
 int lbs_set_channel (struct lbs_private*,int ) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_join_ibss(struct wiphy *wiphy, struct net_device *dev,
  struct cfg80211_ibss_params *params)
{
 struct lbs_private *priv = wiphy_priv(wiphy);
 int ret = 0;
 struct cfg80211_bss *bss;

 if (dev == priv->mesh_dev)
  return -EOPNOTSUPP;

 if (!params->chandef.chan) {
  ret = -ENOTSUPP;
  goto out;
 }

 ret = lbs_set_channel(priv, params->chandef.chan->hw_value);
 if (ret)
  goto out;



 bss = cfg80211_get_bss(wiphy, params->chandef.chan, params->bssid,
  params->ssid, params->ssid_len,
  IEEE80211_BSS_TYPE_IBSS, IEEE80211_PRIVACY_ANY);

 if (bss) {
  ret = lbs_ibss_join_existing(priv, params, bss);
  cfg80211_put_bss(wiphy, bss);
 } else
  ret = lbs_ibss_start_new(priv, params);


 out:
 return ret;
}
