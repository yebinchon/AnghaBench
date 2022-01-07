
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;
struct mwifiex_private {int hs2_enabled; int cfg_bssid; TYPE_1__ wdev; } ;


 int EFAULT ;
 int cfg80211_sched_scan_stopped_rtnl (int ,int ) ;
 int eth_zero_addr (int ) ;
 scalar_t__ mwifiex_deauthenticate (struct mwifiex_private*,int *) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_stop_bg_scan (struct mwifiex_private*) ;

__attribute__((used)) static int
mwifiex_cfg80211_disconnect(struct wiphy *wiphy, struct net_device *dev,
       u16 reason_code)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);

 if (!mwifiex_stop_bg_scan(priv))
  cfg80211_sched_scan_stopped_rtnl(priv->wdev.wiphy, 0);

 if (mwifiex_deauthenticate(priv, ((void*)0)))
  return -EFAULT;

 eth_zero_addr(priv->cfg_bssid);
 priv->hs2_enabled = 0;

 return 0;
}
