
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fec_enet_private {int num_tx_queues; struct fec_enet_priv_tx_q** tx_queue; } ;
struct TYPE_2__ {int ring_size; } ;
struct fec_enet_priv_tx_q {int ** tx_skbuff; TYPE_1__ bd; } ;


 int dev_kfree_skb_any (int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fec_enet_reset_skb(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 struct fec_enet_priv_tx_q *txq;
 int i, j;

 for (i = 0; i < fep->num_tx_queues; i++) {
  txq = fep->tx_queue[i];

  for (j = 0; j < txq->bd.ring_size; j++) {
   if (txq->tx_skbuff[j]) {
    dev_kfree_skb_any(txq->tx_skbuff[j]);
    txq->tx_skbuff[j] = ((void*)0);
   }
  }
 }
}
