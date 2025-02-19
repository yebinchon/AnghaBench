
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dvb_usb_adapter {TYPE_1__* dev; } ;
struct dvb_frontend {TYPE_2__* dvb; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_4__ {scalar_t__ priv; } ;
struct TYPE_3__ {int i2c_adap; } ;


 int DW2102_VOLTAGE_CTRL ;
 int SEC_VOLTAGE_13 ;
 int SEC_VOLTAGE_18 ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static int dw210x_set_voltage(struct dvb_frontend *fe,
         enum fe_sec_voltage voltage)
{
 static u8 command_13v[] = {0x00, 0x01};
 static u8 command_18v[] = {0x01, 0x01};
 static u8 command_off[] = {0x00, 0x00};
 struct i2c_msg msg = {
  .addr = DW2102_VOLTAGE_CTRL,
  .flags = 0,
  .buf = command_off,
  .len = 2,
 };

 struct dvb_usb_adapter *udev_adap =
  (struct dvb_usb_adapter *)(fe->dvb->priv);
 if (voltage == SEC_VOLTAGE_18)
  msg.buf = command_18v;
 else if (voltage == SEC_VOLTAGE_13)
  msg.buf = command_13v;

 i2c_transfer(&udev_adap->dev->i2c_adap, &msg, 1);

 return 0;
}
