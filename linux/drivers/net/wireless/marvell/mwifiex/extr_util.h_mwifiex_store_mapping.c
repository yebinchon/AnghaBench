
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct mwifiex_dma_mapping {int dummy; } ;
struct mwifiex_cb {int dma_mapping; } ;


 int memcpy (int *,struct mwifiex_dma_mapping*,int) ;

__attribute__((used)) static inline void mwifiex_store_mapping(struct sk_buff *skb,
      struct mwifiex_dma_mapping *mapping)
{
 struct mwifiex_cb *cb = (struct mwifiex_cb *)skb->cb;

 memcpy(&cb->dma_mapping, mapping, sizeof(*mapping));
}
