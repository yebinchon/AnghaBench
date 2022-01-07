
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_sysport_priv {int * tx_rings; TYPE_1__* netdev; } ;
struct TYPE_2__ {unsigned int num_tx_queues; } ;


 int bcm_sysport_tx_reclaim (struct bcm_sysport_priv*,int *) ;

__attribute__((used)) static void bcm_sysport_tx_reclaim_all(struct bcm_sysport_priv *priv)
{
 unsigned int q;

 for (q = 0; q < priv->netdev->num_tx_queues; q++)
  bcm_sysport_tx_reclaim(priv, &priv->tx_rings[q]);
}
