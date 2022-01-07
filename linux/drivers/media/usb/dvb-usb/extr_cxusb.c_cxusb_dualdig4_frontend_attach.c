
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dvb_usb_adapter {TYPE_5__* dev; TYPE_1__* fe_adap; } ;
struct TYPE_9__ {int * rc_codes; } ;
struct TYPE_10__ {TYPE_2__ core; } ;
struct TYPE_11__ {TYPE_3__ rc; } ;
struct TYPE_12__ {TYPE_4__ props; int i2c_adap; int udev; } ;
struct TYPE_8__ {int fe; } ;


 int CMD_DIGITAL ;
 int EIO ;
 int I2C_M_RD ;
 int cxusb_bluebird_gpio_pulse (TYPE_5__*,int,int) ;
 int cxusb_bluebird_gpio_rw (TYPE_5__*,int,int ) ;
 int cxusb_ctrl_msg (TYPE_5__*,int ,int *,int ,int *,int ) ;
 int cxusb_i2c_xfer (int *,struct i2c_msg*,int) ;
 int cxusb_zl10353_xc3028_config_no_i2c_gate ;
 int dvb_attach (int ,int *,int *) ;
 int err (char*) ;
 int info (char*) ;
 int msleep (int) ;
 scalar_t__ usb_set_interface (int ,int ,int) ;
 int zl10353_attach ;

__attribute__((used)) static int cxusb_dualdig4_frontend_attach(struct dvb_usb_adapter *adap)
{
 u8 ircode[4];
 int i;
 struct i2c_msg msg = {
  .addr = 0x6b,
  .flags = I2C_M_RD,
  .buf = ircode,
  .len = 4
 };

 if (usb_set_interface(adap->dev->udev, 0, 1) < 0)
  err("set interface failed");

 cxusb_ctrl_msg(adap->dev, CMD_DIGITAL, ((void*)0), 0, ((void*)0), 0);


 cxusb_bluebird_gpio_rw(adap->dev, 0x04, 0);
 cxusb_bluebird_gpio_pulse(adap->dev, 0x01, 1);
 cxusb_bluebird_gpio_pulse(adap->dev, 0x02, 1);

 adap->fe_adap[0].fe =
  dvb_attach(zl10353_attach,
      &cxusb_zl10353_xc3028_config_no_i2c_gate,
      &adap->dev->i2c_adap);
 if (!adap->fe_adap[0].fe)
  return -EIO;


 for (i = 0; adap->dev->props.rc.core.rc_codes && i < 5; i++) {
  msleep(20);
  if (cxusb_i2c_xfer(&adap->dev->i2c_adap, &msg, 1) != 1)
   goto no_IR;
  if (ircode[0] == 0 && ircode[1] == 0)
   continue;
  if (ircode[2] + ircode[3] != 0xff) {
no_IR:
   adap->dev->props.rc.core.rc_codes = ((void*)0);
   info("No IR receiver detected on this device.");
   break;
  }
 }

 return 0;
}
