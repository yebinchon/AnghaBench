
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_3__ {int multicast_num_addrs; } ;
typedef TYPE_1__ mace_private ;


 int netdev_mc_count (struct net_device*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int pr_debug (char*,int ,int) ;
 int restore_multicast_list (struct net_device*) ;

__attribute__((used)) static void set_multicast_list(struct net_device *dev)
{
  mace_private *lp = netdev_priv(dev);
  lp->multicast_num_addrs = netdev_mc_count(dev);
  restore_multicast_list(dev);

}
