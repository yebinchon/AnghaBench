
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct korina_private {int ** tx_skb; TYPE_2__* td_ring; int ** rx_skb; TYPE_1__* rd_ring; } ;
struct TYPE_4__ {scalar_t__ control; } ;
struct TYPE_3__ {scalar_t__ control; } ;


 int KORINA_NUM_RDS ;
 int KORINA_NUM_TDS ;
 int dev_kfree_skb_any (int *) ;
 struct korina_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void korina_free_ring(struct net_device *dev)
{
 struct korina_private *lp = netdev_priv(dev);
 int i;

 for (i = 0; i < KORINA_NUM_RDS; i++) {
  lp->rd_ring[i].control = 0;
  if (lp->rx_skb[i])
   dev_kfree_skb_any(lp->rx_skb[i]);
  lp->rx_skb[i] = ((void*)0);
 }

 for (i = 0; i < KORINA_NUM_TDS; i++) {
  lp->td_ring[i].control = 0;
  if (lp->tx_skb[i])
   dev_kfree_skb_any(lp->tx_skb[i]);
  lp->tx_skb[i] = ((void*)0);
 }
}
