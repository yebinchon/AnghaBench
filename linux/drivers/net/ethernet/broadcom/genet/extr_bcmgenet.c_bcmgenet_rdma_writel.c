
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcmgenet_priv {scalar_t__ base; } ;
typedef enum dma_reg { ____Placeholder_dma_reg } dma_reg ;


 scalar_t__ DMA_RINGS_SIZE ;
 scalar_t__ GENET_RDMA_REG_OFF ;
 scalar_t__* bcmgenet_dma_regs ;
 int bcmgenet_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void bcmgenet_rdma_writel(struct bcmgenet_priv *priv,
     u32 val, enum dma_reg r)
{
 bcmgenet_writel(val, priv->base + GENET_RDMA_REG_OFF +
   DMA_RINGS_SIZE + bcmgenet_dma_regs[r]);
}
