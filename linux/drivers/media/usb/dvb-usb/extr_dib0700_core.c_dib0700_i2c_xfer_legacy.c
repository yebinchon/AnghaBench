
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; int usb_mutex; struct dib0700_state* priv; } ;
struct dib0700_state {int* buf; } ;


 int EINTR ;
 int EIO ;
 int I2C_M_RD ;
 int REQUEST_I2C_READ ;
 int REQUEST_I2C_WRITE ;
 int deb_info (char*,int) ;
 int dib0700_ctrl_rd (struct dvb_usb_device*,int*,int,int*,int) ;
 int dib0700_ctrl_wr (struct dvb_usb_device*,int*,int) ;
 int err (char*) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dib0700_i2c_xfer_legacy(struct i2c_adapter *adap,
       struct i2c_msg *msg, int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 struct dib0700_state *st = d->priv;
 int i, len, result;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EINTR;
 if (mutex_lock_interruptible(&d->usb_mutex) < 0) {
  err("could not acquire lock");
  mutex_unlock(&d->i2c_mutex);
  return -EINTR;
 }

 for (i = 0; i < num; i++) {

  st->buf[1] = msg[i].addr << 1;

  if (msg[i].len > sizeof(st->buf) - 2) {
   deb_info("i2c xfer to big: %d\n",
    msg[i].len);
   result = -EIO;
   goto unlock;
  }
  memcpy(&st->buf[2], msg[i].buf, msg[i].len);


  if (i+1 < num && (msg[i+1].flags & I2C_M_RD)) {
   st->buf[0] = REQUEST_I2C_READ;
   st->buf[1] |= 1;


   len = dib0700_ctrl_rd(d, st->buf, msg[i].len + 2,
           st->buf, msg[i + 1].len);
   if (len <= 0) {
    deb_info("I2C read failed on address 0x%02x\n",
      msg[i].addr);
    result = -EIO;
    goto unlock;
   }

   if (msg[i + 1].len > sizeof(st->buf)) {
    deb_info("i2c xfer buffer to small for %d\n",
     msg[i].len);
    result = -EIO;
    goto unlock;
   }
   memcpy(msg[i + 1].buf, st->buf, msg[i + 1].len);

   msg[i+1].len = len;

   i++;
  } else {
   st->buf[0] = REQUEST_I2C_WRITE;
   result = dib0700_ctrl_wr(d, st->buf, msg[i].len + 2);
   if (result < 0)
    goto unlock;
  }
 }
 result = i;
unlock:
 mutex_unlock(&d->usb_mutex);
 mutex_unlock(&d->i2c_mutex);

 return result;
}
