
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ath6kl_vif {int flags; } ;


 int WLAN_ENABLED ;
 int ath6kl_cfg80211_stop (struct ath6kl_vif*) ;
 int clear_bit (int ,int *) ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ath6kl_close(struct net_device *dev)
{
 struct ath6kl_vif *vif = netdev_priv(dev);

 netif_stop_queue(dev);

 ath6kl_cfg80211_stop(vif);

 clear_bit(WLAN_ENABLED, &vif->flags);

 return 0;
}
