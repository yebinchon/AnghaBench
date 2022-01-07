
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct enet_cb {struct sk_buff* skb; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct enet_cb* last_cb; struct enet_cb* first_cb; } ;


 int DMA_TO_DEVICE ;
 TYPE_1__* GENET_CB (struct sk_buff*) ;
 int dma_addr ;
 int dma_len ;
 scalar_t__ dma_unmap_addr (struct enet_cb*,int ) ;
 int dma_unmap_addr_set (struct enet_cb*,int ,int ) ;
 int dma_unmap_len (struct enet_cb*,int ) ;
 int dma_unmap_page (struct device*,scalar_t__,int ,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;

__attribute__((used)) static struct sk_buff *bcmgenet_free_tx_cb(struct device *dev,
        struct enet_cb *cb)
{
 struct sk_buff *skb;

 skb = cb->skb;

 if (skb) {
  cb->skb = ((void*)0);
  if (cb == GENET_CB(skb)->first_cb)
   dma_unmap_single(dev, dma_unmap_addr(cb, dma_addr),
      dma_unmap_len(cb, dma_len),
      DMA_TO_DEVICE);
  else
   dma_unmap_page(dev, dma_unmap_addr(cb, dma_addr),
           dma_unmap_len(cb, dma_len),
           DMA_TO_DEVICE);
  dma_unmap_addr_set(cb, dma_addr, 0);

  if (cb == GENET_CB(skb)->last_cb)
   return skb;

 } else if (dma_unmap_addr(cb, dma_addr)) {
  dma_unmap_page(dev,
          dma_unmap_addr(cb, dma_addr),
          dma_unmap_len(cb, dma_len),
          DMA_TO_DEVICE);
  dma_unmap_addr_set(cb, dma_addr, 0);
 }

 return ((void*)0);
}
