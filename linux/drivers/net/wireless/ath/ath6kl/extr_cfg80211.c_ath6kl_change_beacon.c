
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_beacon_data {int dummy; } ;
struct ath6kl_vif {scalar_t__ next_mode; } ;


 scalar_t__ AP_NETWORK ;
 int EIO ;
 int EOPNOTSUPP ;
 int ath6kl_cfg80211_ready (struct ath6kl_vif*) ;
 int ath6kl_set_ies (struct ath6kl_vif*,struct cfg80211_beacon_data*) ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ath6kl_change_beacon(struct wiphy *wiphy, struct net_device *dev,
    struct cfg80211_beacon_data *beacon)
{
 struct ath6kl_vif *vif = netdev_priv(dev);

 if (!ath6kl_cfg80211_ready(vif))
  return -EIO;

 if (vif->next_mode != AP_NETWORK)
  return -EOPNOTSUPP;

 return ath6kl_set_ies(vif, beacon);
}
