
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcmgenet_priv {int dummy; } ;


 int DMA_CTRL ;
 int bcmgenet_rdma_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_rdma_writel (struct bcmgenet_priv*,int ,int ) ;
 int bcmgenet_tdma_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_tdma_writel (struct bcmgenet_priv*,int ,int ) ;

__attribute__((used)) static void bcmgenet_enable_dma(struct bcmgenet_priv *priv, u32 dma_ctrl)
{
 u32 reg;

 reg = bcmgenet_rdma_readl(priv, DMA_CTRL);
 reg |= dma_ctrl;
 bcmgenet_rdma_writel(priv, reg, DMA_CTRL);

 reg = bcmgenet_tdma_readl(priv, DMA_CTRL);
 reg |= dma_ctrl;
 bcmgenet_tdma_writel(priv, reg, DMA_CTRL);
}
