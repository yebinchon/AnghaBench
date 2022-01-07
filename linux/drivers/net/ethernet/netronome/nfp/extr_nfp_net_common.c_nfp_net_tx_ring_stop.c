
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_tx_ring {int dummy; } ;
struct netdev_queue {int dummy; } ;


 int netif_tx_start_queue (struct netdev_queue*) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 int nfp_net_tx_ring_should_wake (struct nfp_net_tx_ring*) ;
 int smp_mb () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void nfp_net_tx_ring_stop(struct netdev_queue *nd_q,
     struct nfp_net_tx_ring *tx_ring)
{
 netif_tx_stop_queue(nd_q);


 smp_mb();
 if (unlikely(nfp_net_tx_ring_should_wake(tx_ring)))
  netif_tx_start_queue(nd_q);
}
