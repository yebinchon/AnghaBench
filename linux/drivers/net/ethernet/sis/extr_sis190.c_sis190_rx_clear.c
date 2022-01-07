
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {scalar_t__ RxDescRing; int * Rx_skbuff; } ;


 unsigned int NUM_RX_DESC ;
 int sis190_free_rx_skb (struct sis190_private*,int *,scalar_t__) ;

__attribute__((used)) static void sis190_rx_clear(struct sis190_private *tp)
{
 unsigned int i;

 for (i = 0; i < NUM_RX_DESC; i++) {
  if (!tp->Rx_skbuff[i])
   continue;
  sis190_free_rx_skb(tp, tp->Rx_skbuff + i, tp->RxDescRing + i);
 }
}
