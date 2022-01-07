
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcmgenet_priv {scalar_t__ base; } ;
typedef enum dma_ring_reg { ____Placeholder_dma_ring_reg } dma_ring_reg ;


 unsigned int DMA_RING_SIZE ;
 scalar_t__ GENET_TDMA_REG_OFF ;
 int bcmgenet_readl (scalar_t__) ;
 scalar_t__* genet_dma_ring_regs ;

__attribute__((used)) static inline u32 bcmgenet_tdma_ring_readl(struct bcmgenet_priv *priv,
        unsigned int ring,
        enum dma_ring_reg r)
{
 return bcmgenet_readl(priv->base + GENET_TDMA_REG_OFF +
         (DMA_RING_SIZE * ring) +
         genet_dma_ring_regs[r]);
}
