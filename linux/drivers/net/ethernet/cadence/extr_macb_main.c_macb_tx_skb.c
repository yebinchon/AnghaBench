
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb_tx_skb {int dummy; } ;
struct macb_queue {int bp; struct macb_tx_skb* tx_skb; } ;


 size_t macb_tx_ring_wrap (int ,unsigned int) ;

__attribute__((used)) static struct macb_tx_skb *macb_tx_skb(struct macb_queue *queue,
           unsigned int index)
{
 return &queue->tx_skb[macb_tx_ring_wrap(queue->bp, index)];
}
