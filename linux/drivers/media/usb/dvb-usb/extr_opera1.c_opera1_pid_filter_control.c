
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

__attribute__((used)) static int opera1_pid_filter_control(struct dvb_usb_adapter *adap, int onoff)
{
 int u = 0x04;
 u8 b_pid[3];
 struct i2c_msg msg[] = {
  {.addr = ADDR_B1A6_STREAM_CTRL,.buf = b_pid,.len = 3},
 };
 if (dvb_usb_opera1_debug)
  info("%s hw-pidfilter", onoff ? "enable" : "disable");
 for (; u < 0x7e; u += 2) {
  b_pid[0] = u;
  b_pid[1] = 0;
  b_pid[2] = 0x80;
  i2c_transfer(&adap->dev->i2c_adap, msg, 1);
 }
 return 0;
}
