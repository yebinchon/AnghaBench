
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_pio_txqueue {TYPE_2__* dev; struct b43_pio_txpacket* packets; } ;
struct b43_pio_txpacket {int * skb; } ;
struct TYPE_4__ {TYPE_1__* wl; } ;
struct TYPE_3__ {int hw; } ;


 unsigned int ARRAY_SIZE (struct b43_pio_txpacket*) ;
 int ieee80211_free_txskb (int ,int *) ;

__attribute__((used)) static void b43_pio_cancel_tx_packets(struct b43_pio_txqueue *q)
{
 struct b43_pio_txpacket *pack;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(q->packets); i++) {
  pack = &(q->packets[i]);
  if (pack->skb) {
   ieee80211_free_txskb(q->dev->wl->hw, pack->skb);
   pack->skb = ((void*)0);
  }
 }
}
