
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct xc5000_priv {int dummy; } ;


 int XREG_VERSION ;
 int xc5000_readreg (struct xc5000_priv*,int ,int*) ;

__attribute__((used)) static int xc_get_version(struct xc5000_priv *priv,
 u8 *hw_majorversion, u8 *hw_minorversion,
 u8 *fw_majorversion, u8 *fw_minorversion)
{
 u16 data;
 int result;

 result = xc5000_readreg(priv, XREG_VERSION, &data);
 if (result != 0)
  return result;

 (*hw_majorversion) = (data >> 12) & 0x0F;
 (*hw_minorversion) = (data >> 8) & 0x0F;
 (*fw_majorversion) = (data >> 4) & 0x0F;
 (*fw_minorversion) = data & 0x0F;

 return 0;
}
