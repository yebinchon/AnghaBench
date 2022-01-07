
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_dev {int * fdb_head; int * hash_lock; int gro_cells; struct net_device* dev; int age_timer; int next; } ;
struct net_device {int needs_free_netdev; int features; int vlan_features; int hw_features; int max_mtu; int min_mtu; int priv_flags; } ;


 int ETH_MAX_MTU ;
 int ETH_MIN_MTU ;
 unsigned int FDB_HASH_SIZE ;
 int IFF_NO_QUEUE ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int NETIF_F_GSO_SOFTWARE ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_LLTX ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int TIMER_DEFERRABLE ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;
 int gro_cells_init (int *,struct net_device*) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int netif_keep_dst (struct net_device*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int vxlan_cleanup ;
 int vxlan_type ;

__attribute__((used)) static void vxlan_setup(struct net_device *dev)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 unsigned int h;

 eth_hw_addr_random(dev);
 ether_setup(dev);

 dev->needs_free_netdev = 1;
 SET_NETDEV_DEVTYPE(dev, &vxlan_type);

 dev->features |= NETIF_F_LLTX;
 dev->features |= NETIF_F_SG | NETIF_F_HW_CSUM;
 dev->features |= NETIF_F_RXCSUM;
 dev->features |= NETIF_F_GSO_SOFTWARE;

 dev->vlan_features = dev->features;
 dev->hw_features |= NETIF_F_SG | NETIF_F_HW_CSUM | NETIF_F_RXCSUM;
 dev->hw_features |= NETIF_F_GSO_SOFTWARE;
 netif_keep_dst(dev);
 dev->priv_flags |= IFF_NO_QUEUE;


 dev->min_mtu = ETH_MIN_MTU;
 dev->max_mtu = ETH_MAX_MTU;

 INIT_LIST_HEAD(&vxlan->next);

 timer_setup(&vxlan->age_timer, vxlan_cleanup, TIMER_DEFERRABLE);

 vxlan->dev = dev;

 gro_cells_init(&vxlan->gro_cells, dev);

 for (h = 0; h < FDB_HASH_SIZE; ++h) {
  spin_lock_init(&vxlan->hash_lock[h]);
  INIT_HLIST_HEAD(&vxlan->fdb_head[h]);
 }
}
