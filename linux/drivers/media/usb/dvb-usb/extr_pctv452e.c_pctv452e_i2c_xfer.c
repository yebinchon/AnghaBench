
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int flags; int addr; int* buf; int len; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;


 int EAGAIN ;
 int I2C_M_RD ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pctv452e_i2c_msg (struct dvb_usb_device*,int,int*,int,int*,int) ;

__attribute__((used)) static int pctv452e_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msg,
    int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adapter);
 int i;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 for (i = 0; i < num; i++) {
  u8 addr, snd_len, rcv_len, *snd_buf, *rcv_buf;
  int ret;

  if (msg[i].flags & I2C_M_RD) {
   addr = msg[i].addr;
   snd_buf = ((void*)0);
   snd_len = 0;
   rcv_buf = msg[i].buf;
   rcv_len = msg[i].len;
  } else {
   addr = msg[i].addr;
   snd_buf = msg[i].buf;
   snd_len = msg[i].len;
   rcv_buf = ((void*)0);
   rcv_len = 0;
  }

  ret = pctv452e_i2c_msg(d, addr, snd_buf, snd_len, rcv_buf,
     rcv_len);
  if (ret < rcv_len)
   break;
 }

 mutex_unlock(&d->i2c_mutex);
 return i;
}
