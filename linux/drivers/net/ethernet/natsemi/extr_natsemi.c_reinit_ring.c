
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_private {TYPE_1__* tx_ring; scalar_t__ cur_tx; scalar_t__ dirty_tx; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ cmd_status; } ;


 int TX_RING_SIZE ;
 int drain_tx (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int reinit_rx (struct net_device*) ;

__attribute__((used)) static void reinit_ring(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 int i;


 drain_tx(dev);
 np->dirty_tx = np->cur_tx = 0;
 for (i=0;i<TX_RING_SIZE;i++)
  np->tx_ring[i].cmd_status = 0;

 reinit_rx(dev);
}
