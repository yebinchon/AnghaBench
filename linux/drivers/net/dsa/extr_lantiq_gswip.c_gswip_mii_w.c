
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gswip_priv {scalar_t__ mii; } ;


 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static void gswip_mii_w(struct gswip_priv *priv, u32 val, u32 offset)
{
 __raw_writel(val, priv->mii + (offset * 4));
}
