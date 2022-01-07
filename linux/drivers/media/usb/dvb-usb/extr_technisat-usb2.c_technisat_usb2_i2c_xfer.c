
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int len; int * buf; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; int udev; } ;


 int EAGAIN ;
 int I2C_M_RD ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int technisat_usb2_i2c_access (int ,int ,int *,int ,int *,int ) ;

__attribute__((used)) static int technisat_usb2_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msg,
    int num)
{
 int ret = 0, i;
 struct dvb_usb_device *d = i2c_get_adapdata(adap);



 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 for (i = 0; i < num; i++) {
  if (i+1 < num && msg[i+1].flags & I2C_M_RD) {
   ret = technisat_usb2_i2c_access(d->udev, msg[i+1].addr,
      msg[i].buf, msg[i].len,
      msg[i+1].buf, msg[i+1].len);
   if (ret != 0)
    break;
   i++;
  } else {
   ret = technisat_usb2_i2c_access(d->udev, msg[i].addr,
      msg[i].buf, msg[i].len,
      ((void*)0), 0);
   if (ret != 0)
    break;
  }
 }

 if (ret == 0)
  ret = i;

 mutex_unlock(&d->i2c_mutex);

 return ret;
}
