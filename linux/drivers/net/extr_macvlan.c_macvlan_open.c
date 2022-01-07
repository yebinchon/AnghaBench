
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; int flags; int dev_addr; TYPE_1__* netdev_ops; } ;
struct macvlan_dev {int flags; int * accel_priv; int port; struct net_device* lowerdev; } ;
struct TYPE_2__ {int (* ndo_dfwd_del_station ) (struct net_device*,int *) ;int * (* ndo_dfwd_add_station ) (struct net_device*,struct net_device*) ;} ;


 int EADDRINUSE ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int MACVLAN_FLAG_NOPROMISC ;
 int NETIF_F_HW_L2FW_DOFFLOAD ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_uc_add (struct net_device*,int ) ;
 int dev_uc_del (struct net_device*,int ) ;
 scalar_t__ macvlan_addr_busy (int ,int ) ;
 int macvlan_hash_add (struct macvlan_dev*) ;
 scalar_t__ macvlan_passthru (int ) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int * stub1 (struct net_device*,struct net_device*) ;
 int stub2 (struct net_device*,int *) ;

__attribute__((used)) static int macvlan_open(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;
 int err;

 if (macvlan_passthru(vlan->port)) {
  if (!(vlan->flags & MACVLAN_FLAG_NOPROMISC)) {
   err = dev_set_promiscuity(lowerdev, 1);
   if (err < 0)
    goto out;
  }
  goto hash_add;
 }

 err = -EADDRINUSE;
 if (macvlan_addr_busy(vlan->port, dev->dev_addr))
  goto out;




 if (lowerdev->features & NETIF_F_HW_L2FW_DOFFLOAD)
  vlan->accel_priv =
        lowerdev->netdev_ops->ndo_dfwd_add_station(lowerdev, dev);




 if (IS_ERR_OR_NULL(vlan->accel_priv)) {
  vlan->accel_priv = ((void*)0);
  err = dev_uc_add(lowerdev, dev->dev_addr);
  if (err < 0)
   goto out;
 }

 if (dev->flags & IFF_ALLMULTI) {
  err = dev_set_allmulti(lowerdev, 1);
  if (err < 0)
   goto del_unicast;
 }

 if (dev->flags & IFF_PROMISC) {
  err = dev_set_promiscuity(lowerdev, 1);
  if (err < 0)
   goto clear_multi;
 }

hash_add:
 macvlan_hash_add(vlan);
 return 0;

clear_multi:
 if (dev->flags & IFF_ALLMULTI)
  dev_set_allmulti(lowerdev, -1);
del_unicast:
 if (vlan->accel_priv) {
  lowerdev->netdev_ops->ndo_dfwd_del_station(lowerdev,
          vlan->accel_priv);
  vlan->accel_priv = ((void*)0);
 } else {
  dev_uc_del(lowerdev, dev->dev_addr);
 }
out:
 return err;
}
