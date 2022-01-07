
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct vnet_port {int dummy; } ;
struct vio_dev {int dev; } ;
struct net_device {int needed_tailroom; int hw_features; int features; int max_mtu; int min_mtu; int watchdog_timeo; int * ethtool_ops; int * netdev_ops; int name; int * dev_addr; int * perm_addr; scalar_t__ needed_headroom; } ;


 int ENOMEM ;
 struct net_device* ERR_PTR (int ) ;
 int ETH_ALEN ;
 int ETH_MIN_MTU ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int VNET_MAX_MTU ;
 int VNET_MAX_TXQS ;
 scalar_t__ VNET_PACKET_SKIP ;
 int VSW_TX_TIMEOUT ;
 struct net_device* alloc_etherdev_mqs (int,int ,int) ;
 int sprintf (int ,char*,int,int) ;
 int vsw_ethtool_ops ;
 int vsw_ops ;

__attribute__((used)) static struct net_device *vsw_alloc_netdev(u8 hwaddr[],
        struct vio_dev *vdev,
        u64 handle,
        u64 port_id)
{
 struct net_device *dev;
 struct vnet_port *port;
 int i;

 dev = alloc_etherdev_mqs(sizeof(*port), VNET_MAX_TXQS, 1);
 if (!dev)
  return ERR_PTR(-ENOMEM);
 dev->needed_headroom = VNET_PACKET_SKIP + 8;
 dev->needed_tailroom = 8;

 for (i = 0; i < ETH_ALEN; i++) {
  dev->dev_addr[i] = hwaddr[i];
  dev->perm_addr[i] = dev->dev_addr[i];
 }

 sprintf(dev->name, "vif%d.%d", (int)handle, (int)port_id);

 dev->netdev_ops = &vsw_ops;
 dev->ethtool_ops = &vsw_ethtool_ops;
 dev->watchdog_timeo = VSW_TX_TIMEOUT;

 dev->hw_features = NETIF_F_HW_CSUM | NETIF_F_SG;
 dev->features = dev->hw_features;


 dev->min_mtu = ETH_MIN_MTU;
 dev->max_mtu = VNET_MAX_MTU;

 SET_NETDEV_DEV(dev, &vdev->dev);

 return dev;
}
