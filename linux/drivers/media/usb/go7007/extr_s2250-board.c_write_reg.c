
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; int dev; int adapter; } ;
struct go7007_usb {int i2c_lock; } ;
struct go7007 {scalar_t__ status; struct go7007_usb* hpi_context; } ;


 int EBUSY ;
 int EINTR ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ STATUS_SHUTDOWN ;
 int dev_info (int *,char*) ;
 int go7007_usb_vendor_request (struct go7007*,int,int,int,int*,int,int) ;
 struct go7007* i2c_get_adapdata (int ) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int write_reg(struct i2c_client *client, u8 reg, u8 value)
{
 struct go7007 *go = i2c_get_adapdata(client->adapter);
 struct go7007_usb *usb;
 int rc;
 int dev_addr = client->addr << 1;
 u8 *buf;

 if (go == ((void*)0))
  return -ENODEV;

 if (go->status == STATUS_SHUTDOWN)
  return -EBUSY;

 buf = kzalloc(16, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 usb = go->hpi_context;
 if (mutex_lock_interruptible(&usb->i2c_lock) != 0) {
  dev_info(&client->dev, "i2c lock failed\n");
  kfree(buf);
  return -EINTR;
 }
 rc = go7007_usb_vendor_request(go, 0x55, dev_addr,
           (reg<<8 | value),
           buf,
           16, 1);

 mutex_unlock(&usb->i2c_lock);
 kfree(buf);
 return rc;
}
