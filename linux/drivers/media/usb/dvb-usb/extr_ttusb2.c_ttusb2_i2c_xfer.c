
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int flags; int len; int addr; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;
typedef int obuf ;
typedef int ibuf ;


 int CMD_I2C_XFER ;
 int EAGAIN ;
 int I2C_M_RD ;
 int err (char*,...) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ttusb2_msg (struct dvb_usb_device*,int ,int*,int,int*,int) ;
 int warn (char*) ;

__attribute__((used)) static int ttusb2_i2c_xfer(struct i2c_adapter *adap,struct i2c_msg msg[],int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 static u8 obuf[60], ibuf[60];
 int i, write_read, read;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EAGAIN;

 if (num > 2)
  warn("more than 2 i2c messages at a time is not handled yet. TODO.");

 for (i = 0; i < num; i++) {
  write_read = i+1 < num && (msg[i+1].flags & I2C_M_RD);
  read = msg[i].flags & I2C_M_RD;

  if (3 + msg[i].len > sizeof(obuf)) {
   err("i2c wr len=%d too high", msg[i].len);
   break;
  }
  if (write_read) {
   if (3 + msg[i+1].len > sizeof(ibuf)) {
    err("i2c rd len=%d too high", msg[i+1].len);
    break;
   }
  } else if (read) {
   if (3 + msg[i].len > sizeof(ibuf)) {
    err("i2c rd len=%d too high", msg[i].len);
    break;
   }
  }

  obuf[0] = (msg[i].addr << 1) | (write_read | read);
  if (read)
   obuf[1] = 0;
  else
   obuf[1] = msg[i].len;


  if (write_read)
   obuf[2] = msg[i+1].len;
  else if (read)
   obuf[2] = msg[i].len;
  else
   obuf[2] = 0;

  memcpy(&obuf[3], msg[i].buf, msg[i].len);

  if (ttusb2_msg(d, CMD_I2C_XFER, obuf, obuf[1]+3, ibuf, obuf[2] + 3) < 0) {
   err("i2c transfer failed.");
   break;
  }

  if (write_read) {
   memcpy(msg[i+1].buf, &ibuf[3], msg[i+1].len);
   i++;
  } else if (read)
   memcpy(msg[i].buf, &ibuf[3], msg[i].len);
 }

 mutex_unlock(&d->i2c_mutex);
 return i;
}
