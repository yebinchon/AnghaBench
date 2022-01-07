
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm_enet_priv {int dma_chan_width; } ;


 scalar_t__* bcm_enet_shared_base ;
 scalar_t__ bcm_readl (scalar_t__) ;

__attribute__((used)) static inline u32 enet_dmas_readl(struct bcm_enet_priv *priv, u32 off, int chan)
{
 return bcm_readl(bcm_enet_shared_base[2] + off + chan * priv->dma_chan_width);
}
