
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int req_prod_pvt; } ;
struct netfront_queue {TYPE_2__ rx; void** grant_rx_ref; struct sk_buff** rx_skbs; } ;
typedef void* grant_ref_t ;
struct TYPE_3__ {int id; void* gref; } ;


 int BUG_ON (struct sk_buff*) ;
 TYPE_1__* RING_GET_REQUEST (TYPE_2__*,int ) ;
 int xennet_rxidx (int ) ;

__attribute__((used)) static void xennet_move_rx_slot(struct netfront_queue *queue, struct sk_buff *skb,
    grant_ref_t ref)
{
 int new = xennet_rxidx(queue->rx.req_prod_pvt);

 BUG_ON(queue->rx_skbs[new]);
 queue->rx_skbs[new] = skb;
 queue->grant_rx_ref[new] = ref;
 RING_GET_REQUEST(&queue->rx, queue->rx.req_prod_pvt)->id = new;
 RING_GET_REQUEST(&queue->rx, queue->rx.req_prod_pvt)->gref = ref;
 queue->rx.req_prod_pvt++;
}
