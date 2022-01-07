
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dvb_usb_adapter {TYPE_2__* dev; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_4__ {int i2c_adap; } ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int DW2102_LED_CTRL ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static void dw210x_led_ctrl(struct dvb_frontend *fe, int offon)
{
 static u8 led_off[] = { 0 };
 static u8 led_on[] = { 1 };
 struct i2c_msg msg = {
  .addr = DW2102_LED_CTRL,
  .flags = 0,
  .buf = led_off,
  .len = 1
 };
 struct dvb_usb_adapter *udev_adap =
  (struct dvb_usb_adapter *)(fe->dvb->priv);

 if (offon)
  msg.buf = led_on;
 i2c_transfer(&udev_adap->dev->i2c_adap, &msg, 1);
}
