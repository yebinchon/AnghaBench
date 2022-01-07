
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; int dismantle; int dev_addr; TYPE_1__* netdev_ops; } ;
struct macvlan_dev {int flags; int port; int * accel_priv; struct net_device* lowerdev; } ;
struct TYPE_2__ {int (* ndo_dfwd_del_station ) (struct net_device*,int *) ;} ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MACVLAN_FLAG_NOPROMISC ;
 int dev_mc_unsync (struct net_device*,struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_uc_del (struct net_device*,int ) ;
 int dev_uc_unsync (struct net_device*,struct net_device*) ;
 int macvlan_hash_del (struct macvlan_dev*,int) ;
 scalar_t__ macvlan_passthru (int ) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*,int *) ;

__attribute__((used)) static int macvlan_stop(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;

 if (vlan->accel_priv) {
  lowerdev->netdev_ops->ndo_dfwd_del_station(lowerdev,
          vlan->accel_priv);
  vlan->accel_priv = ((void*)0);
 }

 dev_uc_unsync(lowerdev, dev);
 dev_mc_unsync(lowerdev, dev);

 if (macvlan_passthru(vlan->port)) {
  if (!(vlan->flags & MACVLAN_FLAG_NOPROMISC))
   dev_set_promiscuity(lowerdev, -1);
  goto hash_del;
 }

 if (dev->flags & IFF_ALLMULTI)
  dev_set_allmulti(lowerdev, -1);

 if (dev->flags & IFF_PROMISC)
  dev_set_promiscuity(lowerdev, -1);

 dev_uc_del(lowerdev, dev->dev_addr);

hash_del:
 macvlan_hash_del(vlan, !dev->dismantle);
 return 0;
}
