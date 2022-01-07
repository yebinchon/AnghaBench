
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int udev; } ;
typedef TYPE_1__ rtl8150_t ;


 int ENOMEM ;
 int GFP_NOIO ;
 int RTL8150_REQT_WRITE ;
 int RTL8150_REQ_SET_REGS ;
 int kfree (void*) ;
 void* kmemdup (void const*,int ,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,void*,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int set_registers(rtl8150_t * dev, u16 indx, u16 size, const void *data)
{
 void *buf;
 int ret;

 buf = kmemdup(data, size, GFP_NOIO);
 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(dev->udev, usb_sndctrlpipe(dev->udev, 0),
         RTL8150_REQ_SET_REGS, RTL8150_REQT_WRITE,
         indx, 0, buf, size, 500);
 kfree(buf);
 return ret;
}
