
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; } ;
struct enetc_bdr {int ndev; int index; } ;


 int eth_type_trans (struct sk_buff*,int ) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;

__attribute__((used)) static void enetc_process_skb(struct enetc_bdr *rx_ring,
         struct sk_buff *skb)
{
 skb_record_rx_queue(skb, rx_ring->index);
 skb->protocol = eth_type_trans(skb, rx_ring->ndev);
}
