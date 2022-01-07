
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* netdev_ops; } ;
struct ionic_lif {int dummy; } ;
struct TYPE_2__ {scalar_t__ ndo_start_xmit; } ;


 scalar_t__ ionic_start_xmit ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct ionic_lif *ionic_netdev_lif(struct net_device *netdev)
{
 if (!netdev || netdev->netdev_ops->ndo_start_xmit != ionic_start_xmit)
  return ((void*)0);

 return netdev_priv(netdev);
}
