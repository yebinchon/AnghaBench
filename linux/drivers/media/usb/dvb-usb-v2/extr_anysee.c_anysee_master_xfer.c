
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int flags; int len; int addr; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;


 int CMD_I2C_READ ;
 int CMD_I2C_WRITE ;
 int EAGAIN ;
 int EOPNOTSUPP ;
 int I2C_M_RD ;
 int anysee_ctrl_msg (struct dvb_usb_device*,int*,int,int*,int) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int anysee_master_xfer(struct i2c_adapter *adap, struct i2c_msg *msg,
 int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 int ret = 0, inc, i = 0;
 u8 buf[52];

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 while (i < num) {
  if (num > i + 1 && (msg[i+1].flags & I2C_M_RD)) {
   if (msg[i].len > 2 || msg[i+1].len > 60) {
    ret = -EOPNOTSUPP;
    break;
   }
   buf[0] = CMD_I2C_READ;
   buf[1] = (msg[i].addr << 1) | 0x01;
   buf[2] = msg[i].buf[0];
   buf[3] = msg[i].buf[1];
   buf[4] = msg[i].len-1;
   buf[5] = msg[i+1].len;
   ret = anysee_ctrl_msg(d, buf, 6, msg[i+1].buf,
    msg[i+1].len);
   inc = 2;
  } else {
   if (msg[i].len > 48) {
    ret = -EOPNOTSUPP;
    break;
   }
   buf[0] = CMD_I2C_WRITE;
   buf[1] = (msg[i].addr << 1);
   buf[2] = msg[i].len;
   buf[3] = 0x01;
   memcpy(&buf[4], msg[i].buf, msg[i].len);
   ret = anysee_ctrl_msg(d, buf, 4 + msg[i].len, ((void*)0), 0);
   inc = 1;
  }
  if (ret)
   break;

  i += inc;
 }

 mutex_unlock(&d->i2c_mutex);

 return ret ? ret : i;
}
