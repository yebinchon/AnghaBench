
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int flags; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct go7007_usb {int i2c_lock; } ;
struct go7007 {int* usb_buf; scalar_t__ status; struct go7007_usb* hpi_context; } ;


 int EIO ;
 int ENODEV ;
 int I2C_M_RD ;
 scalar_t__ STATUS_SHUTDOWN ;
 scalar_t__ go7007_usb_vendor_request (struct go7007*,int,int ,int ,int*,int,int) ;
 struct go7007* i2c_get_adapdata (struct i2c_adapter*) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int,int,...) ;

__attribute__((used)) static int go7007_usb_i2c_master_xfer(struct i2c_adapter *adapter,
     struct i2c_msg msgs[], int num)
{
 struct go7007 *go = i2c_get_adapdata(adapter);
 struct go7007_usb *usb = go->hpi_context;
 u8 *buf = go->usb_buf;
 int buf_len, i;
 int ret = -EIO;

 if (go->status == STATUS_SHUTDOWN)
  return -ENODEV;

 mutex_lock(&usb->i2c_lock);

 for (i = 0; i < num; ++i) {



  if (i + 1 < num && msgs[i].addr == msgs[i + 1].addr &&
    !(msgs[i].flags & I2C_M_RD) &&
    (msgs[i + 1].flags & I2C_M_RD)) {




   buf[0] = 0x01;
   buf[1] = msgs[i].len + 1;
   buf[2] = msgs[i].addr << 1;
   memcpy(&buf[3], msgs[i].buf, msgs[i].len);
   buf_len = msgs[i].len + 3;
   buf[buf_len++] = msgs[++i].len;
  } else if (msgs[i].flags & I2C_M_RD) {




   buf[0] = 0x01;
   buf[1] = 1;
   buf[2] = msgs[i].addr << 1;
   buf[3] = msgs[i].len;
   buf_len = 4;
  } else {




   buf[0] = 0x00;
   buf[1] = msgs[i].len + 1;
   buf[2] = msgs[i].addr << 1;
   memcpy(&buf[3], msgs[i].buf, msgs[i].len);
   buf_len = msgs[i].len + 3;
   buf[buf_len++] = 0;
  }
  if (go7007_usb_vendor_request(go, 0x24, 0, 0,
      buf, buf_len, 0) < 0)
   goto i2c_done;
  if (msgs[i].flags & I2C_M_RD) {
   memset(buf, 0, msgs[i].len + 1);
   if (go7007_usb_vendor_request(go, 0x25, 0, 0, buf,
      msgs[i].len + 1, 1) < 0)
    goto i2c_done;
   memcpy(msgs[i].buf, buf + 1, msgs[i].len);
  }
 }
 ret = num;

i2c_done:
 mutex_unlock(&usb->i2c_lock);
 return ret;
}
