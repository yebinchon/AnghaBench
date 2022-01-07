
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xrx200_priv {int dummy; } ;


 int xrx200_pmac_r32 (struct xrx200_priv*,int ) ;
 int xrx200_pmac_w32 (struct xrx200_priv*,int ,int ) ;

__attribute__((used)) static void xrx200_pmac_mask(struct xrx200_priv *priv, u32 clear, u32 set,
        u32 offset)
{
 u32 val = xrx200_pmac_r32(priv, offset);

 val &= ~(clear);
 val |= set;
 xrx200_pmac_w32(priv, val, offset);
}
