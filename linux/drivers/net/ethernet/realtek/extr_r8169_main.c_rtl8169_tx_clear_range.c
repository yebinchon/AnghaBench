
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sk_buff {int dummy; } ;
struct rtl8169_private {scalar_t__ TxDescArray; struct ring_info* tx_skb; } ;
struct ring_info {unsigned int len; struct sk_buff* skb; } ;


 unsigned int NUM_TX_DESC ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int rtl8169_unmap_tx_skb (int ,struct ring_info*,scalar_t__) ;
 int tp_to_dev (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8169_tx_clear_range(struct rtl8169_private *tp, u32 start,
       unsigned int n)
{
 unsigned int i;

 for (i = 0; i < n; i++) {
  unsigned int entry = (start + i) % NUM_TX_DESC;
  struct ring_info *tx_skb = tp->tx_skb + entry;
  unsigned int len = tx_skb->len;

  if (len) {
   struct sk_buff *skb = tx_skb->skb;

   rtl8169_unmap_tx_skb(tp_to_dev(tp), tx_skb,
          tp->TxDescArray + entry);
   if (skb) {
    dev_consume_skb_any(skb);
    tx_skb->skb = ((void*)0);
   }
  }
 }
}
