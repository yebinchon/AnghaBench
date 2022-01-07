
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dvb_usb_adapter {TYPE_1__* dev; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int SU3000_STREAM_CTRL ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static int su3000_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 static u8 command_start[] = {0x00};
 static u8 command_stop[] = {0x01};
 struct i2c_msg msg = {
  .addr = SU3000_STREAM_CTRL,
  .flags = 0,
  .buf = onoff ? command_start : command_stop,
  .len = 1
 };

 i2c_transfer(&adap->dev->i2c_adap, &msg, 1);

 return 0;
}
