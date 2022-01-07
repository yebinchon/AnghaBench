
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm_sf2_priv {scalar_t__ core; } ;


 scalar_t__ bcm_sf2_mangle_addr (struct bcm_sf2_priv*,scalar_t__) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void core_writel(struct bcm_sf2_priv *priv, u32 val, u32 off)
{
 u32 tmp = bcm_sf2_mangle_addr(priv, off);
 writel_relaxed(val, priv->core + tmp);
}
