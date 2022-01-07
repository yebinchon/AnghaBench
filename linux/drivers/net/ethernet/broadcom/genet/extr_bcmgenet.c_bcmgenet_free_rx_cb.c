
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct enet_cb {struct sk_buff* skb; } ;
struct device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int dma_addr ;
 int dma_len ;
 scalar_t__ dma_unmap_addr (struct enet_cb*,int ) ;
 int dma_unmap_addr_set (struct enet_cb*,int ,int ) ;
 int dma_unmap_len (struct enet_cb*,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;

__attribute__((used)) static struct sk_buff *bcmgenet_free_rx_cb(struct device *dev,
        struct enet_cb *cb)
{
 struct sk_buff *skb;

 skb = cb->skb;
 cb->skb = ((void*)0);

 if (dma_unmap_addr(cb, dma_addr)) {
  dma_unmap_single(dev, dma_unmap_addr(cb, dma_addr),
     dma_unmap_len(cb, dma_len), DMA_FROM_DEVICE);
  dma_unmap_addr_set(cb, dma_addr, 0);
 }

 return skb;
}
