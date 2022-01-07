
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int flags; } ;


 int IFF_SLAVE ;
 int dev_change_flags (struct net_device*,int,int *) ;
 int dev_mc_sync (struct net_device*,struct net_device*) ;
 int dev_open (struct net_device*,int *) ;
 int dev_set_mtu (struct net_device*,int) ;
 int dev_uc_sync (struct net_device*,struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static void __netvsc_vf_setup(struct net_device *ndev,
         struct net_device *vf_netdev)
{
 int ret;


 ret = dev_set_mtu(vf_netdev, ndev->mtu);
 if (ret)
  netdev_warn(vf_netdev,
       "unable to change mtu to %u\n", ndev->mtu);


 dev_change_flags(vf_netdev, ndev->flags | IFF_SLAVE, ((void*)0));


 netif_addr_lock_bh(ndev);
 dev_uc_sync(vf_netdev, ndev);
 dev_mc_sync(vf_netdev, ndev);
 netif_addr_unlock_bh(ndev);

 if (netif_running(ndev)) {
  ret = dev_open(vf_netdev, ((void*)0));
  if (ret)
   netdev_warn(vf_netdev,
        "unable to open: %d\n", ret);
 }
}
