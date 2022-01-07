
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct virt_wifi_netdev_priv {int is_connected; } ;
struct station_info {int dummy; } ;
struct net_device {int dummy; } ;


 int ENOENT ;
 int ether_addr_copy (int *,int ) ;
 int fake_router_bssid ;
 struct virt_wifi_netdev_priv* netdev_priv (struct net_device*) ;
 int virt_wifi_get_station (struct wiphy*,struct net_device*,int ,struct station_info*) ;
 int wiphy_debug (struct wiphy*,char*) ;

__attribute__((used)) static int virt_wifi_dump_station(struct wiphy *wiphy, struct net_device *dev,
      int idx, u8 *mac, struct station_info *sinfo)
{
 struct virt_wifi_netdev_priv *priv = netdev_priv(dev);

 wiphy_debug(wiphy, "dump_station\n");

 if (idx != 0 || !priv->is_connected)
  return -ENOENT;

 ether_addr_copy(mac, fake_router_bssid);
 return virt_wifi_get_station(wiphy, dev, fake_router_bssid, sinfo);
}
