
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xrx200_priv {scalar_t__ pmac_reg; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 xrx200_pmac_r32(struct xrx200_priv *priv, u32 offset)
{
 return __raw_readl(priv->pmac_reg + offset);
}
