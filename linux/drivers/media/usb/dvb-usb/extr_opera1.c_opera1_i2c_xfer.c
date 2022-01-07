
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int addr; int flags; int len; int buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;


 int EAGAIN ;
 int ENODEV ;
 int I2C_M_RD ;
 int dvb_usb_opera1_debug ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int info (char*,int,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int opera1_usb_i2c_msgxfer (struct dvb_usb_device*,int,int ,int) ;

__attribute__((used)) static int opera1_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msg[],
      int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 int i = 0, tmp = 0;

 if (!d)
  return -ENODEV;
 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 for (i = 0; i < num; i++) {
  if ((tmp = opera1_usb_i2c_msgxfer(d,
     (msg[i].addr<<1)|(msg[i].flags&I2C_M_RD?0x01:0),
     msg[i].buf,
     msg[i].len
     )) != msg[i].len) {
   break;
  }
  if (dvb_usb_opera1_debug & 0x10)
   info("sending i2c message %d %d", tmp, msg[i].len);
 }
 mutex_unlock(&d->i2c_mutex);
 return num;
}
