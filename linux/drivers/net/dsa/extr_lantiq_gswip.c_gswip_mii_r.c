
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gswip_priv {scalar_t__ mii; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 gswip_mii_r(struct gswip_priv *priv, u32 offset)
{
 return __raw_readl(priv->mii + (offset * 4));
}
