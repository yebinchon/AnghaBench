
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mwifiex_dma_mapping {int addr; } ;
typedef int dma_addr_t ;


 int mwifiex_get_mapping (struct sk_buff*,struct mwifiex_dma_mapping*) ;

__attribute__((used)) static inline dma_addr_t MWIFIEX_SKB_DMA_ADDR(struct sk_buff *skb)
{
 struct mwifiex_dma_mapping mapping;

 mwifiex_get_mapping(skb, &mapping);

 return mapping.addr;
}
