
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_tx_queue {unsigned int cur_tx; TYPE_2__* tx_skbuff_dma; struct dma_desc* dma_tx; int ** tx_skbuff; struct stmmac_priv* priv_data; } ;
struct stmmac_priv {int device; TYPE_1__* plat; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct dma_desc {void* des2; } ;
struct TYPE_4__ {unsigned int buf; unsigned int len; } ;
struct TYPE_3__ {scalar_t__ enh_desc; } ;


 unsigned int BUF_SIZE_2KiB ;
 unsigned int BUF_SIZE_8KiB ;
 int DMA_TO_DEVICE ;
 int DMA_TX_SIZE ;
 int STMMAC_CHAIN_MODE ;
 unsigned int STMMAC_GET_ENTRY (unsigned int,int ) ;
 void* cpu_to_le32 (unsigned int) ;
 unsigned int dma_map_single (int ,scalar_t__,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int ,unsigned int) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 int stmmac_prepare_tx_desc (struct stmmac_priv*,struct dma_desc*,int,unsigned int,int,int ,int,int,int ) ;

__attribute__((used)) static int jumbo_frm(void *p, struct sk_buff *skb, int csum)
{
 struct stmmac_tx_queue *tx_q = (struct stmmac_tx_queue *)p;
 unsigned int nopaged_len = skb_headlen(skb);
 struct stmmac_priv *priv = tx_q->priv_data;
 unsigned int entry = tx_q->cur_tx;
 unsigned int bmax, des2;
 unsigned int i = 1, len;
 struct dma_desc *desc;

 desc = tx_q->dma_tx + entry;

 if (priv->plat->enh_desc)
  bmax = BUF_SIZE_8KiB;
 else
  bmax = BUF_SIZE_2KiB;

 len = nopaged_len - bmax;

 des2 = dma_map_single(priv->device, skb->data,
         bmax, DMA_TO_DEVICE);
 desc->des2 = cpu_to_le32(des2);
 if (dma_mapping_error(priv->device, des2))
  return -1;
 tx_q->tx_skbuff_dma[entry].buf = des2;
 tx_q->tx_skbuff_dma[entry].len = bmax;

 stmmac_prepare_tx_desc(priv, desc, 1, bmax, csum, STMMAC_CHAIN_MODE,
   0, 0, skb->len);

 while (len != 0) {
  tx_q->tx_skbuff[entry] = ((void*)0);
  entry = STMMAC_GET_ENTRY(entry, DMA_TX_SIZE);
  desc = tx_q->dma_tx + entry;

  if (len > bmax) {
   des2 = dma_map_single(priv->device,
           (skb->data + bmax * i),
           bmax, DMA_TO_DEVICE);
   desc->des2 = cpu_to_le32(des2);
   if (dma_mapping_error(priv->device, des2))
    return -1;
   tx_q->tx_skbuff_dma[entry].buf = des2;
   tx_q->tx_skbuff_dma[entry].len = bmax;
   stmmac_prepare_tx_desc(priv, desc, 0, bmax, csum,
     STMMAC_CHAIN_MODE, 1, 0, skb->len);
   len -= bmax;
   i++;
  } else {
   des2 = dma_map_single(priv->device,
           (skb->data + bmax * i), len,
           DMA_TO_DEVICE);
   desc->des2 = cpu_to_le32(des2);
   if (dma_mapping_error(priv->device, des2))
    return -1;
   tx_q->tx_skbuff_dma[entry].buf = des2;
   tx_q->tx_skbuff_dma[entry].len = len;

   stmmac_prepare_tx_desc(priv, desc, 0, len, csum,
     STMMAC_CHAIN_MODE, 1, 1, skb->len);
   len = 0;
  }
 }

 tx_q->cur_tx = entry;

 return entry;
}
