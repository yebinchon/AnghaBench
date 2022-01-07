
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sf2_priv {int core_reg_align; } ;



__attribute__((used)) static inline u32 bcm_sf2_mangle_addr(struct bcm_sf2_priv *priv, u32 off)
{
 return off << priv->core_reg_align;
}
