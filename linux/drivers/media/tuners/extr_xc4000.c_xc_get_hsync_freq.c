
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct xc4000_priv {int dummy; } ;


 int XREG_HSYNC_FREQ ;
 int xc4000_readreg (struct xc4000_priv*,int ,int*) ;

__attribute__((used)) static int xc_get_hsync_freq(struct xc4000_priv *priv, u32 *hsync_freq_hz)
{
 u16 regData;
 int result;

 result = xc4000_readreg(priv, XREG_HSYNC_FREQ, &regData);
 if (result != 0)
  return result;

 (*hsync_freq_hz) = ((regData & 0x0fff) * 763)/100;
 return result;
}
