
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct dvb_usb_device {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GL861_READ ;
 int GL861_REQ_I2C_READ ;
 int kfree (int*) ;
 int* kmalloc (scalar_t__,int ) ;
 int memcpy (int*,int*,scalar_t__) ;
 int usb_control_msg (int ,int ,int ,int ,int,int,int*,scalar_t__,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int
gl861_i2c_read_ex(struct dvb_usb_device *d, u8 addr, u8 *rbuf, u16 rlen)
{
 u8 *buf;
 int ret;

 buf = kmalloc(rlen, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev, 0),
     GL861_REQ_I2C_READ, GL861_READ,
     addr << (8 + 1), 0x0100, buf, rlen, 2000);
 if (ret > 0 && rlen > 0)
  memcpy(buf, rbuf, rlen);
 kfree(buf);
 return ret;
}
