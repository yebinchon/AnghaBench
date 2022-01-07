
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hinic_rxq {int dummy; } ;
typedef int dma_addr_t ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int rx_unmap_skb (struct hinic_rxq*,int ) ;

__attribute__((used)) static void rx_free_skb(struct hinic_rxq *rxq, struct sk_buff *skb,
   dma_addr_t dma_addr)
{
 rx_unmap_skb(rxq, dma_addr);
 dev_kfree_skb_any(skb);
}
