
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; scalar_t__ head; scalar_t__ tail; int ** skb; } ;
struct qcaspi {TYPE_3__* net_dev; TYPE_2__ txr; } ;
struct TYPE_5__ {int tx_dropped; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;


 int TX_RING_MAX_LEN ;
 int dev_kfree_skb (int *) ;
 int netif_tx_lock_bh (TYPE_3__*) ;
 int netif_tx_unlock_bh (TYPE_3__*) ;

__attribute__((used)) static void
qcaspi_flush_tx_ring(struct qcaspi *qca)
{
 int i;




 netif_tx_lock_bh(qca->net_dev);
 for (i = 0; i < TX_RING_MAX_LEN; i++) {
  if (qca->txr.skb[i]) {
   dev_kfree_skb(qca->txr.skb[i]);
   qca->txr.skb[i] = ((void*)0);
   qca->net_dev->stats.tx_dropped++;
  }
 }
 qca->txr.tail = 0;
 qca->txr.head = 0;
 qca->txr.size = 0;
 netif_tx_unlock_bh(qca->net_dev);
}
