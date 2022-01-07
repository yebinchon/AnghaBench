
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_2__ {int * dma_phys; } ;
struct hisi_femac_priv {int dev; TYPE_1__ txq; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void hisi_femac_tx_dma_unmap(struct hisi_femac_priv *priv,
        struct sk_buff *skb, unsigned int pos)
{
 dma_addr_t dma_addr;

 dma_addr = priv->txq.dma_phys[pos];
 dma_unmap_single(priv->dev, dma_addr, skb->len, DMA_TO_DEVICE);
}
