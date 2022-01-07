
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ftgmac100_txdes {int txdes3; } ;
struct ftgmac100 {int ** tx_skbs; int dev; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int FTGMAC100_TXDES0_FTS ;
 int FTGMAC100_TXDES0_LTS ;
 size_t FTGMAC100_TXDES0_TXBUF_SIZE (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_page (int ,int ,size_t,int ) ;
 int dma_unmap_single (int ,int ,size_t,int ) ;
 int le32_to_cpu (int ) ;
 size_t skb_headlen (struct sk_buff*) ;

__attribute__((used)) static void ftgmac100_free_tx_packet(struct ftgmac100 *priv,
         unsigned int pointer,
         struct sk_buff *skb,
         struct ftgmac100_txdes *txdes,
         u32 ctl_stat)
{
 dma_addr_t map = le32_to_cpu(txdes->txdes3);
 size_t len;

 if (ctl_stat & FTGMAC100_TXDES0_FTS) {
  len = skb_headlen(skb);
  dma_unmap_single(priv->dev, map, len, DMA_TO_DEVICE);
 } else {
  len = FTGMAC100_TXDES0_TXBUF_SIZE(ctl_stat);
  dma_unmap_page(priv->dev, map, len, DMA_TO_DEVICE);
 }


 if (ctl_stat & FTGMAC100_TXDES0_LTS)
  dev_kfree_skb(skb);
 priv->tx_skbs[pointer] = ((void*)0);
}
