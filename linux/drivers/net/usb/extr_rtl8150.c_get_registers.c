
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
 int RTL8150_REQT_READ ;
 int RTL8150_REQ_GET_REGS ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int usb_control_msg (int ,int ,int ,int ,int,int ,void*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int get_registers(rtl8150_t * dev, u16 indx, u16 size, void *data)
{
 void *buf;
 int ret;

 buf = kmalloc(size, GFP_NOIO);
 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(dev->udev, usb_rcvctrlpipe(dev->udev, 0),
         RTL8150_REQ_GET_REGS, RTL8150_REQT_READ,
         indx, 0, buf, size, 500);
 if (ret > 0 && ret <= size)
  memcpy(data, buf, ret);
 kfree(buf);
 return ret;
}
