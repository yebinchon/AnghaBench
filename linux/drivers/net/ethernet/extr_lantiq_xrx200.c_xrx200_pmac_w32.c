
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xrx200_priv {scalar_t__ pmac_reg; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void xrx200_pmac_w32(struct xrx200_priv *priv, u32 val, u32 offset)
{
 __raw_writel(val, priv->pmac_reg + offset);
}
