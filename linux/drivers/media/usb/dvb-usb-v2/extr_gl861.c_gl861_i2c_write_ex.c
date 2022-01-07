
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GL861_REQ_I2C_RAW ;
 int GL861_WRITE ;
 int kfree (int*) ;
 int* kmemdup (int*,int ,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int,int,int*,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int
gl861_i2c_write_ex(struct dvb_usb_device *d, u8 addr, u8 *wbuf, u16 wlen)
{
 u8 *buf;
 int ret;

 buf = kmemdup(wbuf, wlen, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(d->udev, usb_sndctrlpipe(d->udev, 0),
     GL861_REQ_I2C_RAW, GL861_WRITE,
     addr << (8 + 1), 0x0100, buf, wlen, 2000);
 kfree(buf);
 return ret;
}
