
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int anysee_read_reg (struct dvb_usb_device*,int ,int*) ;
 int anysee_write_reg (struct dvb_usb_device*,int ,int) ;

__attribute__((used)) static int anysee_wr_reg_mask(struct dvb_usb_device *d, u16 reg, u8 val,
 u8 mask)
{
 int ret;
 u8 tmp;


 if (mask != 0xff) {
  ret = anysee_read_reg(d, reg, &tmp);
  if (ret)
   return ret;

  val &= mask;
  tmp &= ~mask;
  val |= tmp;
 }

 return anysee_write_reg(d, reg, val);
}
