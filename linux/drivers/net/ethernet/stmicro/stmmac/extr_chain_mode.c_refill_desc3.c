
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_rx_queue {int dirty_rx; scalar_t__ dma_rx_phy; struct stmmac_priv* priv_data; } ;
struct stmmac_priv {int extend_desc; scalar_t__ hwts_rx_en; } ;
struct dma_desc {int des3; } ;


 int DMA_RX_SIZE ;
 int cpu_to_le32 (unsigned int) ;

__attribute__((used)) static void refill_desc3(void *priv_ptr, struct dma_desc *p)
{
 struct stmmac_rx_queue *rx_q = (struct stmmac_rx_queue *)priv_ptr;
 struct stmmac_priv *priv = rx_q->priv_data;

 if (priv->hwts_rx_en && !priv->extend_desc)




  p->des3 = cpu_to_le32((unsigned int)(rx_q->dma_rx_phy +
          (((rx_q->dirty_rx) + 1) %
           DMA_RX_SIZE) *
          sizeof(struct dma_desc)));
}
