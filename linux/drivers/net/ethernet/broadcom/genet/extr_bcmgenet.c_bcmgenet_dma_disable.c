
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcmgenet_priv {int dummy; } ;


 int DESC_INDEX ;
 int DMA_CTRL ;
 int DMA_EN ;
 int DMA_RING_BUF_EN_SHIFT ;
 int UMAC_TX_FLUSH ;
 int bcmgenet_rdma_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_rdma_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_tdma_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_tdma_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static u32 bcmgenet_dma_disable(struct bcmgenet_priv *priv)
{
 u32 reg;
 u32 dma_ctrl;


 dma_ctrl = 1 << (DESC_INDEX + DMA_RING_BUF_EN_SHIFT) | DMA_EN;
 reg = bcmgenet_tdma_readl(priv, DMA_CTRL);
 reg &= ~dma_ctrl;
 bcmgenet_tdma_writel(priv, reg, DMA_CTRL);

 reg = bcmgenet_rdma_readl(priv, DMA_CTRL);
 reg &= ~dma_ctrl;
 bcmgenet_rdma_writel(priv, reg, DMA_CTRL);

 bcmgenet_umac_writel(priv, 1, UMAC_TX_FLUSH);
 udelay(10);
 bcmgenet_umac_writel(priv, 0, UMAC_TX_FLUSH);

 return dma_ctrl;
}
