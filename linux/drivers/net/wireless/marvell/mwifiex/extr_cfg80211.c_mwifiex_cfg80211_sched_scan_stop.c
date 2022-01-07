
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int dummy; } ;


 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_stop_bg_scan (struct mwifiex_private*) ;
 int wiphy_info (struct wiphy*,char*) ;

__attribute__((used)) static int mwifiex_cfg80211_sched_scan_stop(struct wiphy *wiphy,
         struct net_device *dev, u64 reqid)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);

 wiphy_info(wiphy, "sched scan stop!");
 mwifiex_stop_bg_scan(priv);

 return 0;
}
