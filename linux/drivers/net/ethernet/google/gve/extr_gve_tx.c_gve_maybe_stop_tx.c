
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct gve_tx_ring {int wake_queue; int netdev_txq; int stop_queue; } ;


 int EBUSY ;
 int gve_can_tx (struct gve_tx_ring*,int) ;
 int gve_skb_fifo_bytes_required (struct gve_tx_ring*,struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int netif_tx_start_queue (int ) ;
 int netif_tx_stop_queue (int ) ;
 int smp_mb () ;

__attribute__((used)) static int gve_maybe_stop_tx(struct gve_tx_ring *tx, struct sk_buff *skb)
{
 int bytes_required;

 bytes_required = gve_skb_fifo_bytes_required(tx, skb);
 if (likely(gve_can_tx(tx, bytes_required)))
  return 0;


 tx->stop_queue++;
 netif_tx_stop_queue(tx->netdev_txq);
 smp_mb();
 if (likely(!gve_can_tx(tx, bytes_required)))
  return -EBUSY;

 netif_tx_start_queue(tx->netdev_txq);
 tx->wake_queue++;
 return 0;
}
