
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dvb_usb_device {int rc_dev; int i2c_adap; } ;


 int I2C_M_RD ;
 int RC_PROTO_NEC ;
 int RC_SCANCODE_NEC (int,int) ;
 int cxusb_i2c_xfer (int *,struct i2c_msg*,int) ;
 int rc_keydown (int ,int ,int ,int ) ;

__attribute__((used)) static int cxusb_bluebird2_rc_query(struct dvb_usb_device *d)
{
 u8 ircode[4];
 struct i2c_msg msg = {
  .addr = 0x6b,
  .flags = I2C_M_RD,
  .buf = ircode,
  .len = 4
 };

 if (cxusb_i2c_xfer(&d->i2c_adap, &msg, 1) != 1)
  return 0;

 if (ircode[1] || ircode[2])
  rc_keydown(d->rc_dev, RC_PROTO_NEC,
      RC_SCANCODE_NEC(~ircode[1] & 0xff, ircode[2]), 0);
 return 0;
}
