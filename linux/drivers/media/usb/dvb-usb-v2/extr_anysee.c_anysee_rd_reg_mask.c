
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int anysee_read_reg (struct dvb_usb_device*,int ,int*) ;

__attribute__((used)) static int anysee_rd_reg_mask(struct dvb_usb_device *d, u16 reg, u8 *val,
 u8 mask)
{
 int ret, i;
 u8 tmp;

 ret = anysee_read_reg(d, reg, &tmp);
 if (ret)
  return ret;

 tmp &= mask;


 for (i = 0; i < 8; i++) {
  if ((mask >> i) & 0x01)
   break;
 }
 *val = tmp >> i;

 return 0;
}
