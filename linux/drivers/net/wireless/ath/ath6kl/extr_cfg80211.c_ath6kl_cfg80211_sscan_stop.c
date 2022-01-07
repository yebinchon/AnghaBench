
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ath6kl_vif {int dummy; } ;


 int EIO ;
 int __ath6kl_cfg80211_sscan_stop (struct ath6kl_vif*) ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ath6kl_cfg80211_sscan_stop(struct wiphy *wiphy,
          struct net_device *dev, u64 reqid)
{
 struct ath6kl_vif *vif = netdev_priv(dev);
 bool stopped;

 stopped = __ath6kl_cfg80211_sscan_stop(vif);

 if (!stopped)
  return -EIO;

 return 0;
}
