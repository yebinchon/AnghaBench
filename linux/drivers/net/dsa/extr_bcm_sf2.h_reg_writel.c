
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct bcm_sf2_priv {scalar_t__* reg_offsets; scalar_t__ reg; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void reg_writel(struct bcm_sf2_priv *priv, u32 val, u16 off)
{
 writel_relaxed(val, priv->reg + priv->reg_offsets[off]);
}
