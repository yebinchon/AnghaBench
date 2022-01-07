
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int req_prod_pvt; int rsp_cons; } ;
struct netfront_queue {TYPE_1__ tx; } ;


 int NET_TX_RING_SIZE ;
 int XEN_NETIF_NR_SLOTS_MIN ;

__attribute__((used)) static int netfront_tx_slot_available(struct netfront_queue *queue)
{
 return (queue->tx.req_prod_pvt - queue->tx.rsp_cons) <
  (NET_TX_RING_SIZE - XEN_NETIF_NR_SLOTS_MIN - 1);
}
