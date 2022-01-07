
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u16 ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; int usb_mutex; int udev; struct dib0700_state* priv; } ;
struct dib0700_state {int* buf; } ;


 int EINTR ;
 int EIO ;
 int I2C_M_NOSTART ;
 int I2C_M_RD ;
 int REQUEST_NEW_I2C_READ ;
 int REQUEST_NEW_I2C_WRITE ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int deb_data (char*) ;
 int deb_info (char*,int) ;
 int debug_dump (int*,int,int (*) (char*)) ;
 int err (char*) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int,int,int*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int dib0700_i2c_xfer_new(struct i2c_adapter *adap, struct i2c_msg *msg,
    int num)
{



 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 struct dib0700_state *st = d->priv;
 uint8_t bus_mode = 1;
 uint8_t gen_mode = 0;
 uint8_t en_start = 0;
 uint8_t en_stop = 0;
 int result, i;



 if (mutex_lock_interruptible(&d->i2c_mutex) < 0)
  return -EINTR;

 for (i = 0; i < num; i++) {
  if (i == 0) {

   en_start = 1;
  } else if (!(msg[i].flags & I2C_M_NOSTART)) {

   en_start = 1;
  } else {


   en_start = 0;
  }
  if (i == (num - 1)) {

   en_stop = 1;
  }

  if (msg[i].flags & I2C_M_RD) {

   u16 index, value;
   uint8_t i2c_dest;

   i2c_dest = (msg[i].addr << 1);
   value = ((en_start << 7) | (en_stop << 6) |
     (msg[i].len & 0x3F)) << 8 | i2c_dest;

   index = ((gen_mode << 6) & 0xC0) |
    ((bus_mode << 4) & 0x30);

   result = usb_control_msg(d->udev,
       usb_rcvctrlpipe(d->udev, 0),
       REQUEST_NEW_I2C_READ,
       USB_TYPE_VENDOR | USB_DIR_IN,
       value, index, st->buf,
       msg[i].len,
       USB_CTRL_GET_TIMEOUT);
   if (result < 0) {
    deb_info("i2c read error (status = %d)\n", result);
    goto unlock;
   }

   if (msg[i].len > sizeof(st->buf)) {
    deb_info("buffer too small to fit %d bytes\n",
      msg[i].len);
    result = -EIO;
    goto unlock;
   }

   memcpy(msg[i].buf, st->buf, msg[i].len);

   deb_data("<<< ");
   debug_dump(msg[i].buf, msg[i].len, deb_data);

  } else {

   if (mutex_lock_interruptible(&d->usb_mutex) < 0) {
    err("could not acquire lock");
    result = -EINTR;
    goto unlock;
   }
   st->buf[0] = REQUEST_NEW_I2C_WRITE;
   st->buf[1] = msg[i].addr << 1;
   st->buf[2] = (en_start << 7) | (en_stop << 6) |
    (msg[i].len & 0x3F);

   st->buf[3] = ((gen_mode << 6) & 0xC0) |
     ((bus_mode << 4) & 0x30);

   if (msg[i].len > sizeof(st->buf) - 4) {
    deb_info("i2c message to big: %d\n",
      msg[i].len);
    mutex_unlock(&d->usb_mutex);
    result = -EIO;
    goto unlock;
   }


   memcpy(&st->buf[4], msg[i].buf, msg[i].len);

   deb_data(">>> ");
   debug_dump(st->buf, msg[i].len + 4, deb_data);

   result = usb_control_msg(d->udev,
       usb_sndctrlpipe(d->udev, 0),
       REQUEST_NEW_I2C_WRITE,
       USB_TYPE_VENDOR | USB_DIR_OUT,
       0, 0, st->buf, msg[i].len + 4,
       USB_CTRL_GET_TIMEOUT);
   mutex_unlock(&d->usb_mutex);
   if (result < 0) {
    deb_info("i2c write error (status = %d)\n", result);
    break;
   }
  }
 }
 result = i;

unlock:
 mutex_unlock(&d->i2c_mutex);
 return result;
}
