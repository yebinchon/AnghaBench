
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ftgmac100_txdes {int txdes0; } ;
struct ftgmac100_rxdes {int rxdes3; } ;
struct ftgmac100 {int rx_q_entries; int tx_q_entries; struct sk_buff** tx_skbs; struct ftgmac100_txdes* txdes; int dev; struct sk_buff** rx_skbs; struct ftgmac100_rxdes* rxdes; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int RX_BUF_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int ftgmac100_free_tx_packet (struct ftgmac100*,int,struct sk_buff*,struct ftgmac100_txdes*,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void ftgmac100_free_buffers(struct ftgmac100 *priv)
{
 int i;


 for (i = 0; i < priv->rx_q_entries; i++) {
  struct ftgmac100_rxdes *rxdes = &priv->rxdes[i];
  struct sk_buff *skb = priv->rx_skbs[i];
  dma_addr_t map = le32_to_cpu(rxdes->rxdes3);

  if (!skb)
   continue;

  priv->rx_skbs[i] = ((void*)0);
  dma_unmap_single(priv->dev, map, RX_BUF_SIZE, DMA_FROM_DEVICE);
  dev_kfree_skb_any(skb);
 }


 for (i = 0; i < priv->tx_q_entries; i++) {
  struct ftgmac100_txdes *txdes = &priv->txdes[i];
  struct sk_buff *skb = priv->tx_skbs[i];

  if (!skb)
   continue;
  ftgmac100_free_tx_packet(priv, i, skb, txdes,
      le32_to_cpu(txdes->txdes0));
 }
}
