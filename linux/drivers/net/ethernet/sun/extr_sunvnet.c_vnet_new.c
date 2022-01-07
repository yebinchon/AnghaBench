
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnet {int local_mac; int list; int * port_hash; int port_list; struct net_device* dev; int lock; } ;
struct vio_dev {int dev; } ;
struct net_device {int needed_tailroom; int* dev_addr; int hw_features; int features; int max_mtu; int min_mtu; int watchdog_timeo; int * ethtool_ops; int * netdev_ops; scalar_t__ needed_headroom; } ;


 int ENOMEM ;
 struct vnet* ERR_PTR (int) ;
 int ETH_ALEN ;
 int ETH_MIN_MTU ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int NETIF_F_ALL_TSO ;
 int NETIF_F_GSO ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int VNET_MAX_MTU ;
 int VNET_MAX_TXQS ;
 scalar_t__ VNET_PACKET_SKIP ;
 int VNET_PORT_HASH_SIZE ;
 int VNET_TX_TIMEOUT ;
 struct net_device* alloc_etherdev_mqs (int,int ,int) ;
 int free_netdev (struct net_device*) ;
 int list_add (int *,int *) ;
 int netdev_info (struct net_device*,char*,int*) ;
 struct vnet* netdev_priv (struct net_device*) ;
 int pr_err (char*) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int vnet_ethtool_ops ;
 int vnet_list ;
 int vnet_ops ;

__attribute__((used)) static struct vnet *vnet_new(const u64 *local_mac,
        struct vio_dev *vdev)
{
 struct net_device *dev;
 struct vnet *vp;
 int err, i;

 dev = alloc_etherdev_mqs(sizeof(*vp), VNET_MAX_TXQS, 1);
 if (!dev)
  return ERR_PTR(-ENOMEM);
 dev->needed_headroom = VNET_PACKET_SKIP + 8;
 dev->needed_tailroom = 8;

 for (i = 0; i < ETH_ALEN; i++)
  dev->dev_addr[i] = (*local_mac >> (5 - i) * 8) & 0xff;

 vp = netdev_priv(dev);

 spin_lock_init(&vp->lock);
 vp->dev = dev;

 INIT_LIST_HEAD(&vp->port_list);
 for (i = 0; i < VNET_PORT_HASH_SIZE; i++)
  INIT_HLIST_HEAD(&vp->port_hash[i]);
 INIT_LIST_HEAD(&vp->list);
 vp->local_mac = *local_mac;

 dev->netdev_ops = &vnet_ops;
 dev->ethtool_ops = &vnet_ethtool_ops;
 dev->watchdog_timeo = VNET_TX_TIMEOUT;

 dev->hw_features = NETIF_F_TSO | NETIF_F_GSO | NETIF_F_ALL_TSO |
      NETIF_F_HW_CSUM | NETIF_F_SG;
 dev->features = dev->hw_features;


 dev->min_mtu = ETH_MIN_MTU;
 dev->max_mtu = VNET_MAX_MTU;

 SET_NETDEV_DEV(dev, &vdev->dev);

 err = register_netdev(dev);
 if (err) {
  pr_err("Cannot register net device, aborting\n");
  goto err_out_free_dev;
 }

 netdev_info(dev, "Sun LDOM vnet %pM\n", dev->dev_addr);

 list_add(&vp->list, &vnet_list);

 return vp;

err_out_free_dev:
 free_netdev(dev);

 return ERR_PTR(err);
}
