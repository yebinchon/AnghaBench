
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int flags; int netdev; } ;
struct net_device {int flags; } ;


 scalar_t__ E100_MAX_MULTICAST_ADDRS ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int KERN_DEBUG ;
 int e100_configure ;
 int e100_exec_cb (struct nic*,int *,int ) ;
 int e100_multi ;
 int hw ;
 int multicast_all ;
 scalar_t__ netdev_mc_count (struct net_device*) ;
 struct nic* netdev_priv (struct net_device*) ;
 int netif_printk (struct nic*,int ,int ,int ,char*,scalar_t__,int) ;
 int promiscuous ;

__attribute__((used)) static void e100_set_multicast_list(struct net_device *netdev)
{
 struct nic *nic = netdev_priv(netdev);

 netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
       "mc_count=%d, flags=0x%04X\n",
       netdev_mc_count(netdev), netdev->flags);

 if (netdev->flags & IFF_PROMISC)
  nic->flags |= promiscuous;
 else
  nic->flags &= ~promiscuous;

 if (netdev->flags & IFF_ALLMULTI ||
  netdev_mc_count(netdev) > E100_MAX_MULTICAST_ADDRS)
  nic->flags |= multicast_all;
 else
  nic->flags &= ~multicast_all;

 e100_exec_cb(nic, ((void*)0), e100_configure);
 e100_exec_cb(nic, ((void*)0), e100_multi);
}
