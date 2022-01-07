
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_pioqueue {int nr_txfree; int txfree; } ;
struct b43legacy_pio_txpacket {int list; scalar_t__ skb; struct b43legacy_pioqueue* queue; } ;


 int dev_kfree_skb (scalar_t__) ;
 int dev_kfree_skb_irq (scalar_t__) ;
 int list_move (int *,int *) ;

__attribute__((used)) static void free_txpacket(struct b43legacy_pio_txpacket *packet,
     int irq_context)
{
 struct b43legacy_pioqueue *queue = packet->queue;

 if (packet->skb) {
  if (irq_context)
   dev_kfree_skb_irq(packet->skb);
  else
   dev_kfree_skb(packet->skb);
 }
 list_move(&packet->list, &queue->txfree);
 queue->nr_txfree++;
}
