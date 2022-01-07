
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct xc4000_priv {int dummy; } ;


 int XREG_FREQ_ERROR ;
 int xc4000_readreg (struct xc4000_priv*,int ,scalar_t__*) ;

__attribute__((used)) static int xc_get_frequency_error(struct xc4000_priv *priv, u32 *freq_error_hz)
{
 int result;
 u16 regData;
 u32 tmp;

 result = xc4000_readreg(priv, XREG_FREQ_ERROR, &regData);
 if (result != 0)
  return result;

 tmp = (u32)regData & 0xFFFFU;
 tmp = (tmp < 0x8000U ? tmp : 0x10000U - tmp);
 (*freq_error_hz) = tmp * 15625;
 return result;
}
