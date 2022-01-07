
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GL861_READ ;
 int GL861_REQ_I2C_READ ;
 int GL861_REQ_I2C_WRITE ;
 int GL861_WRITE ;
 int KBUILD_MODNAME ;
 int dev_err (int *,char*,int ,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int* kmemdup (int*,int,int ) ;
 int memcpy (int*,int*,int) ;
 int usb_control_msg (TYPE_1__*,int ,int,int,int,int,int*,int,int) ;
 int usb_rcvctrlpipe (TYPE_1__*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int gl861_i2c_msg(struct dvb_usb_device *d, u8 addr,
    u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 u16 index;
 u16 value = addr << (8 + 1);
 int wo = (rbuf == ((void*)0) || rlen == 0);
 u8 req, type;
 u8 *buf;
 int ret;

 if (wo) {
  req = GL861_REQ_I2C_WRITE;
  type = GL861_WRITE;
  buf = kmemdup(wbuf, wlen, GFP_KERNEL);
 } else {
  req = GL861_REQ_I2C_READ;
  type = GL861_READ;
  buf = kmalloc(rlen, GFP_KERNEL);
 }
 if (!buf)
  return -ENOMEM;

 switch (wlen) {
 case 1:
  index = wbuf[0];
  break;
 case 2:
  index = wbuf[0];
  value = value + wbuf[1];
  break;
 default:
  dev_err(&d->udev->dev, "%s: wlen=%d, aborting\n",
    KBUILD_MODNAME, wlen);
  kfree(buf);
  return -EINVAL;
 }

 usleep_range(1000, 2000);

 ret = usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev, 0), req, type,
         value, index, buf, rlen, 2000);

 if (!wo && ret > 0)
  memcpy(rbuf, buf, rlen);

 kfree(buf);
 return ret;
}
