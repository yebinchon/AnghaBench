
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_rx_queue {struct stmmac_priv* priv_data; } ;
struct stmmac_priv {scalar_t__ dma_buf_sz; } ;
struct dma_desc {int des2; int des3; } ;


 scalar_t__ BUF_SIZE_16KiB ;
 scalar_t__ BUF_SIZE_8KiB ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void refill_desc3(void *priv_ptr, struct dma_desc *p)
{
 struct stmmac_rx_queue *rx_q = priv_ptr;
 struct stmmac_priv *priv = rx_q->priv_data;


 if (priv->dma_buf_sz == BUF_SIZE_16KiB)
  p->des3 = cpu_to_le32(le32_to_cpu(p->des2) + BUF_SIZE_8KiB);
}
