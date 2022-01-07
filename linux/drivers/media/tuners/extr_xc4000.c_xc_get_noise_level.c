
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xc4000_priv {int dummy; } ;


 int XREG_NOISE_LEVEL ;
 int xc4000_readreg (struct xc4000_priv*,int ,int *) ;

__attribute__((used)) static int xc_get_noise_level(struct xc4000_priv *priv, u16 *noise)
{
 return xc4000_readreg(priv, XREG_NOISE_LEVEL, noise);
}
