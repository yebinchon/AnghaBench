
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct bcm_sf2_priv {scalar_t__* reg_offsets; scalar_t__ reg; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 reg_readl(struct bcm_sf2_priv *priv, u16 off)
{
 return readl_relaxed(priv->reg + priv->reg_offsets[off]);
}
