
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct virt_wifi_netdev_priv {int connect_requested_bss; int connect; int is_up; scalar_t__ being_deleted; } ;
struct net_device {int dummy; } ;
struct cfg80211_connect_params {int bssid; } ;


 int EBUSY ;
 int HZ ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int ) ;
 struct virt_wifi_netdev_priv* netdev_priv (struct net_device*) ;
 int schedule_delayed_work (int *,int) ;
 int wiphy_debug (struct wiphy*,char*) ;

__attribute__((used)) static int virt_wifi_connect(struct wiphy *wiphy, struct net_device *netdev,
        struct cfg80211_connect_params *sme)
{
 struct virt_wifi_netdev_priv *priv = netdev_priv(netdev);
 bool could_schedule;

 if (priv->being_deleted || !priv->is_up)
  return -EBUSY;

 could_schedule = schedule_delayed_work(&priv->connect, HZ * 2);
 if (!could_schedule)
  return -EBUSY;

 if (sme->bssid)
  ether_addr_copy(priv->connect_requested_bss, sme->bssid);
 else
  eth_zero_addr(priv->connect_requested_bss);

 wiphy_debug(wiphy, "connect\n");

 return 0;
}
