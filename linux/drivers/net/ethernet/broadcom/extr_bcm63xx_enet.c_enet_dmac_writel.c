
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_enet_priv {int dma_chan_width; } ;


 scalar_t__ bcm63xx_enetdmacreg (int ) ;
 scalar_t__* bcm_enet_shared_base ;
 int bcm_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void enet_dmac_writel(struct bcm_enet_priv *priv,
           u32 val, u32 off, int chan)
{
 bcm_writel(val, bcm_enet_shared_base[1] +
  bcm63xx_enetdmacreg(off) + chan * priv->dma_chan_width);
}
