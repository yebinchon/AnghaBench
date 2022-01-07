
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcmgenet_rx_ring {unsigned int index; struct bcmgenet_priv* priv; } ;
struct bcmgenet_priv {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int DMA_MBUF_DONE_THRESH ;
 scalar_t__ DMA_RING0_TIMEOUT ;
 int DMA_TIMEOUT_MASK ;
 int bcmgenet_rdma_readl (struct bcmgenet_priv*,scalar_t__) ;
 int bcmgenet_rdma_ring_writel (struct bcmgenet_priv*,unsigned int,int,int ) ;
 int bcmgenet_rdma_writel (struct bcmgenet_priv*,int,scalar_t__) ;

__attribute__((used)) static void bcmgenet_set_rx_coalesce(struct bcmgenet_rx_ring *ring,
         u32 usecs, u32 pkts)
{
 struct bcmgenet_priv *priv = ring->priv;
 unsigned int i = ring->index;
 u32 reg;

 bcmgenet_rdma_ring_writel(priv, i, pkts, DMA_MBUF_DONE_THRESH);

 reg = bcmgenet_rdma_readl(priv, DMA_RING0_TIMEOUT + i);
 reg &= ~DMA_TIMEOUT_MASK;
 reg |= DIV_ROUND_UP(usecs * 1000, 8192);
 bcmgenet_rdma_writel(priv, reg, DMA_RING0_TIMEOUT + i);
}
