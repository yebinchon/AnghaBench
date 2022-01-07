
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mtk_tx_dma {int txd2; void* txd1; void* txd3; } ;
struct mtk_tx_buf {struct sk_buff* skb; } ;
struct mtk_eth {TYPE_1__* soc; } ;
typedef void* dma_addr_t ;
struct TYPE_2__ {int caps; } ;


 scalar_t__ MTK_DMA_DUMMY_DESC ;
 scalar_t__ MTK_HAS_CAPS (int ,int ) ;
 int MTK_QDMA ;
 int TX_DMA_PLEN0 (size_t) ;
 int TX_DMA_PLEN1 (size_t) ;
 int dma_addr0 ;
 int dma_addr1 ;
 int dma_len0 ;
 int dma_len1 ;
 int dma_unmap_addr_set (struct mtk_tx_buf*,int ,void*) ;
 int dma_unmap_len_set (struct mtk_tx_buf*,int ,size_t) ;

__attribute__((used)) static void setup_tx_buf(struct mtk_eth *eth, struct mtk_tx_buf *tx_buf,
    struct mtk_tx_dma *txd, dma_addr_t mapped_addr,
    size_t size, int idx)
{
 if (MTK_HAS_CAPS(eth->soc->caps, MTK_QDMA)) {
  dma_unmap_addr_set(tx_buf, dma_addr0, mapped_addr);
  dma_unmap_len_set(tx_buf, dma_len0, size);
 } else {
  if (idx & 1) {
   txd->txd3 = mapped_addr;
   txd->txd2 |= TX_DMA_PLEN1(size);
   dma_unmap_addr_set(tx_buf, dma_addr1, mapped_addr);
   dma_unmap_len_set(tx_buf, dma_len1, size);
  } else {
   tx_buf->skb = (struct sk_buff *)MTK_DMA_DUMMY_DESC;
   txd->txd1 = mapped_addr;
   txd->txd2 = TX_DMA_PLEN0(size);
   dma_unmap_addr_set(tx_buf, dma_addr0, mapped_addr);
   dma_unmap_len_set(tx_buf, dma_len0, size);
  }
 }
}
