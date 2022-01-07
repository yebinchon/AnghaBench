
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xc4000_priv {int dummy; } ;


 int XREG_QUALITY ;
 int xc4000_readreg (struct xc4000_priv*,int ,int *) ;

__attribute__((used)) static int xc_get_quality(struct xc4000_priv *priv, u16 *quality)
{
 return xc4000_readreg(priv, XREG_QUALITY, quality);
}
