
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct bcmgenet_priv {TYPE_1__* hw_params; } ;
struct TYPE_2__ {int tx_queues; int tx_bds_per_q; } ;


 int DESC_INDEX ;
 int DMA_ARBITER_SP ;
 int DMA_ARB_CTRL ;
 int DMA_CTRL ;
 int DMA_EN ;
 int DMA_PRIORITY_0 ;
 int DMA_PRIORITY_1 ;
 int DMA_PRIORITY_2 ;
 size_t DMA_PRIO_REG_INDEX (int) ;
 int DMA_PRIO_REG_SHIFT (int) ;
 int DMA_RING_BUF_EN_SHIFT ;
 int DMA_RING_CFG ;
 int GENET_Q0_PRIORITY ;
 int GENET_Q16_TX_BD_CNT ;
 int TOTAL_DESC ;
 int bcmgenet_init_tx_ring (struct bcmgenet_priv*,int,int,int,int) ;
 int bcmgenet_tdma_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_tdma_writel (struct bcmgenet_priv*,int,int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcmgenet_init_tx_queues(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 u32 i, dma_enable;
 u32 dma_ctrl, ring_cfg;
 u32 dma_priority[3] = {0, 0, 0};

 dma_ctrl = bcmgenet_tdma_readl(priv, DMA_CTRL);
 dma_enable = dma_ctrl & DMA_EN;
 dma_ctrl &= ~DMA_EN;
 bcmgenet_tdma_writel(priv, dma_ctrl, DMA_CTRL);

 dma_ctrl = 0;
 ring_cfg = 0;


 bcmgenet_tdma_writel(priv, DMA_ARBITER_SP, DMA_ARB_CTRL);


 for (i = 0; i < priv->hw_params->tx_queues; i++) {
  bcmgenet_init_tx_ring(priv, i, priv->hw_params->tx_bds_per_q,
          i * priv->hw_params->tx_bds_per_q,
          (i + 1) * priv->hw_params->tx_bds_per_q);
  ring_cfg |= (1 << i);
  dma_ctrl |= (1 << (i + DMA_RING_BUF_EN_SHIFT));
  dma_priority[DMA_PRIO_REG_INDEX(i)] |=
   ((GENET_Q0_PRIORITY + i) << DMA_PRIO_REG_SHIFT(i));
 }


 bcmgenet_init_tx_ring(priv, DESC_INDEX, GENET_Q16_TX_BD_CNT,
         priv->hw_params->tx_queues *
         priv->hw_params->tx_bds_per_q,
         TOTAL_DESC);
 ring_cfg |= (1 << DESC_INDEX);
 dma_ctrl |= (1 << (DESC_INDEX + DMA_RING_BUF_EN_SHIFT));
 dma_priority[DMA_PRIO_REG_INDEX(DESC_INDEX)] |=
  ((GENET_Q0_PRIORITY + priv->hw_params->tx_queues) <<
   DMA_PRIO_REG_SHIFT(DESC_INDEX));


 bcmgenet_tdma_writel(priv, dma_priority[0], DMA_PRIORITY_0);
 bcmgenet_tdma_writel(priv, dma_priority[1], DMA_PRIORITY_1);
 bcmgenet_tdma_writel(priv, dma_priority[2], DMA_PRIORITY_2);


 bcmgenet_tdma_writel(priv, ring_cfg, DMA_RING_CFG);


 if (dma_enable)
  dma_ctrl |= DMA_EN;
 bcmgenet_tdma_writel(priv, dma_ctrl, DMA_CTRL);
}
