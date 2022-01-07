
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct urb {int dummy; } ;
struct peak_usb_device {TYPE_1__* adapter; } ;
struct TYPE_2__ {int (* dev_restart_async ) (struct peak_usb_device*,struct urb*,int *) ;} ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PCAN_USB_MAX_CMD_LEN ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int peak_usb_restart_complete (struct peak_usb_device*) ;
 int stub1 (struct peak_usb_device*,struct urb*,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static int peak_usb_restart(struct peak_usb_device *dev)
{
 struct urb *urb;
 int err;
 u8 *buf;





 if (!dev->adapter->dev_restart_async) {
  peak_usb_restart_complete(dev);
  return 0;
 }


 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb)
  return -ENOMEM;


 buf = kmalloc(PCAN_USB_MAX_CMD_LEN, GFP_ATOMIC);
 if (!buf) {
  usb_free_urb(urb);
  return -ENOMEM;
 }


 err = dev->adapter->dev_restart_async(dev, urb, buf);
 if (!err)
  return 0;

 kfree(buf);
 usb_free_urb(urb);

 return err;
}
