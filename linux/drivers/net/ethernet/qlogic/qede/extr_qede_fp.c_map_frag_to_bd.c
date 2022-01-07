
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_tx_queue {int dev; } ;
struct eth_tx_bd {int dummy; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;


 int BD_SET_UNMAP_ADDR_LEN (struct eth_tx_bd*,int ,int ) ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int dma_mapping_error (int ,int ) ;
 int skb_frag_dma_map (int ,int *,int ,int ,int ) ;
 int skb_frag_size (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int map_frag_to_bd(struct qede_tx_queue *txq,
     skb_frag_t *frag, struct eth_tx_bd *bd)
{
 dma_addr_t mapping;


 mapping = skb_frag_dma_map(txq->dev, frag, 0,
       skb_frag_size(frag), DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(txq->dev, mapping)))
  return -ENOMEM;


 BD_SET_UNMAP_ADDR_LEN(bd, mapping, skb_frag_size(frag));

 return 0;
}
