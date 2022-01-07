
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcmgenet_priv {TYPE_1__* hw_params; int dev; } ;
struct TYPE_2__ {int rx_queues; int tx_queues; } ;


 int DMA_CTRL ;
 int DMA_DISABLED ;
 int DMA_EN ;
 int DMA_RING_BUF_EN_SHIFT ;
 int DMA_STATUS ;
 int DMA_TIMEOUT_VAL ;
 int ETIMEDOUT ;
 int bcmgenet_rdma_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_rdma_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_tdma_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_tdma_writel (struct bcmgenet_priv*,int,int ) ;
 int netdev_warn (int ,char*) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bcmgenet_dma_teardown(struct bcmgenet_priv *priv)
{
 int ret = 0;
 int timeout = 0;
 u32 reg;
 u32 dma_ctrl;
 int i;


 reg = bcmgenet_tdma_readl(priv, DMA_CTRL);
 reg &= ~DMA_EN;
 bcmgenet_tdma_writel(priv, reg, DMA_CTRL);


 while (timeout++ < DMA_TIMEOUT_VAL) {
  reg = bcmgenet_tdma_readl(priv, DMA_STATUS);
  if (reg & DMA_DISABLED)
   break;

  udelay(1);
 }

 if (timeout == DMA_TIMEOUT_VAL) {
  netdev_warn(priv->dev, "Timed out while disabling TX DMA\n");
  ret = -ETIMEDOUT;
 }


 usleep_range(10000, 20000);


 reg = bcmgenet_rdma_readl(priv, DMA_CTRL);
 reg &= ~DMA_EN;
 bcmgenet_rdma_writel(priv, reg, DMA_CTRL);

 timeout = 0;

 while (timeout++ < DMA_TIMEOUT_VAL) {
  reg = bcmgenet_rdma_readl(priv, DMA_STATUS);
  if (reg & DMA_DISABLED)
   break;

  udelay(1);
 }

 if (timeout == DMA_TIMEOUT_VAL) {
  netdev_warn(priv->dev, "Timed out while disabling RX DMA\n");
  ret = -ETIMEDOUT;
 }

 dma_ctrl = 0;
 for (i = 0; i < priv->hw_params->rx_queues; i++)
  dma_ctrl |= (1 << (i + DMA_RING_BUF_EN_SHIFT));
 reg = bcmgenet_rdma_readl(priv, DMA_CTRL);
 reg &= ~dma_ctrl;
 bcmgenet_rdma_writel(priv, reg, DMA_CTRL);

 dma_ctrl = 0;
 for (i = 0; i < priv->hw_params->tx_queues; i++)
  dma_ctrl |= (1 << (i + DMA_RING_BUF_EN_SHIFT));
 reg = bcmgenet_tdma_readl(priv, DMA_CTRL);
 reg &= ~dma_ctrl;
 bcmgenet_tdma_writel(priv, reg, DMA_CTRL);

 return ret;
}
