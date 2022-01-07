
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int* buf; int flags; int len; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int i2c_mutex; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_M_RD ;
 int az6027_usb_in_op (struct dvb_usb_device*,void*,int,int,void**,int) ;
 int az6027_usb_out_op (struct dvb_usb_device*,void*,int,int,void**,int) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int kfree (void**) ;
 void** kmalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int warn (char*) ;

__attribute__((used)) static int az6027_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msg[], int num)
{
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 int i = 0, j = 0, len = 0;
 u16 index;
 u16 value;
 int length;
 u8 req;
 u8 *data;

 data = kmalloc(256, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 if (mutex_lock_interruptible(&d->i2c_mutex) < 0) {
  kfree(data);
  return -EAGAIN;
 }

 if (num > 2)
  warn("more than 2 i2c messages at a time is not handled yet. TODO.");

 for (i = 0; i < num; i++) {

  if (msg[i].addr == 0x99) {
   req = 0xBE;
   index = 0;
   value = msg[i].buf[0] & 0x00ff;
   length = 1;
   az6027_usb_out_op(d, req, value, index, data, length);
  }

  if (msg[i].addr == 0xd0) {

   if (i + 1 < num && (msg[i + 1].flags & I2C_M_RD)) {
    req = 0xB9;
    index = (((msg[i].buf[0] << 8) & 0xff00) | (msg[i].buf[1] & 0x00ff));
    value = msg[i].addr + (msg[i].len << 8);
    length = msg[i + 1].len + 6;
    az6027_usb_in_op(d, req, value, index, data, length);
    len = msg[i + 1].len;
    for (j = 0; j < len; j++)
     msg[i + 1].buf[j] = data[j + 5];

    i++;
   } else {


    req = 0xBD;
    index = (((msg[i].buf[0] << 8) & 0xff00) | (msg[i].buf[1] & 0x00ff));
    value = msg[i].addr + (2 << 8);
    length = msg[i].len - 2;
    len = msg[i].len - 2;
    for (j = 0; j < len; j++)
     data[j] = msg[i].buf[j + 2];
    az6027_usb_out_op(d, req, value, index, data, length);
   }
  }

  if (msg[i].addr == 0xc0) {
   if (msg[i].flags & I2C_M_RD) {

    req = 0xB9;
    index = 0x0;
    value = msg[i].addr;
    length = msg[i].len + 6;
    az6027_usb_in_op(d, req, value, index, data, length);
    len = msg[i].len;
    for (j = 0; j < len; j++)
     msg[i].buf[j] = data[j + 5];

   } else {

    req = 0xBD;
    index = msg[i].buf[0] & 0x00FF;
    value = msg[i].addr + (1 << 8);
    length = msg[i].len - 1;
    len = msg[i].len - 1;

    for (j = 0; j < len; j++)
     data[j] = msg[i].buf[j + 1];

    az6027_usb_out_op(d, req, value, index, data, length);
   }
  }
 }
 mutex_unlock(&d->i2c_mutex);
 kfree(data);

 return i;
}
