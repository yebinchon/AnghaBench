
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int* buf; int len; int addr; } ;
struct dvb_usb_adapter {TYPE_1__* dev; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int ADDR_B1A6_STREAM_CTRL ;
 scalar_t__ dvb_usb_opera1_debug ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int info (char*,char*) ;

__attribute__((used)) static int opera1_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 static u8 buf_start[2] = { 0xff, 0x03 };
 static u8 buf_stop[2] = { 0xff, 0x00 };
 struct i2c_msg start_tuner[] = {
  {.addr = ADDR_B1A6_STREAM_CTRL,.buf = onoff ? buf_start : buf_stop,.len = 2},
 };
 if (dvb_usb_opera1_debug)
  info("streaming %s", onoff ? "on" : "off");
 i2c_transfer(&adap->dev->i2c_adap, start_tuner, 1);
 return 0;
}
