
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct typhoon {struct rxbuff_ent* rxbuffers; } ;
struct rxbuff_ent {scalar_t__ skb; } ;


 size_t RXENT_ENTRIES ;
 scalar_t__ typhoon_alloc_rx_skb (struct typhoon*,size_t) ;

__attribute__((used)) static void
typhoon_fill_free_ring(struct typhoon *tp)
{
 u32 i;

 for(i = 0; i < RXENT_ENTRIES; i++) {
  struct rxbuff_ent *rxb = &tp->rxbuffers[i];
  if(rxb->skb)
   continue;
  if(typhoon_alloc_rx_skb(tp, i) < 0)
   break;
 }
}
