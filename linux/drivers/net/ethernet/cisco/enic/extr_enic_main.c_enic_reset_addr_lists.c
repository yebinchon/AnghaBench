
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct enic {scalar_t__ flags; scalar_t__ uc_count; scalar_t__ mc_count; struct net_device* netdev; } ;


 int __dev_mc_unsync (struct net_device*,int *) ;
 int __dev_uc_unsync (struct net_device*,int *) ;

void enic_reset_addr_lists(struct enic *enic)
{
 struct net_device *netdev = enic->netdev;

 __dev_uc_unsync(netdev, ((void*)0));
 __dev_mc_unsync(netdev, ((void*)0));

 enic->mc_count = 0;
 enic->uc_count = 0;
 enic->flags = 0;
}
