
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_tx_ring {struct mtk_tx_buf* buf; struct mtk_tx_dma* dma; } ;
struct mtk_tx_dma {int dummy; } ;
struct mtk_tx_buf {int dummy; } ;



__attribute__((used)) static inline struct mtk_tx_buf *mtk_desc_to_tx_buf(struct mtk_tx_ring *ring,
          struct mtk_tx_dma *txd)
{
 int idx = txd - ring->dma;

 return &ring->buf[idx];
}
