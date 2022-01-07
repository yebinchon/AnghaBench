
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct xc4000_priv {int dummy; } ;


 int xc_send_i2c_data (struct xc4000_priv*,int*,int) ;

__attribute__((used)) static int xc_write_reg(struct xc4000_priv *priv, u16 regAddr, u16 i2cData)
{
 u8 buf[4];
 int result;

 buf[0] = (regAddr >> 8) & 0xFF;
 buf[1] = regAddr & 0xFF;
 buf[2] = (i2cData >> 8) & 0xFF;
 buf[3] = i2cData & 0xFF;
 result = xc_send_i2c_data(priv, buf, 4);

 return result;
}
