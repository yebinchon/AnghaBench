
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_complete_t ;
struct usb_device {int dummy; } ;
struct urb {unsigned int pipe; void* context; int complete; struct usb_device* dev; } ;
struct TYPE_2__ {int * out_ep; int * in_ep; } ;
struct mt76_dev {TYPE_1__ usb; int dev; } ;


 int USB_DIR_IN ;
 struct usb_device* to_usb_device (int ) ;
 unsigned int usb_rcvbulkpipe (struct usb_device*,int ) ;
 unsigned int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static void
mt76u_fill_bulk_urb(struct mt76_dev *dev, int dir, int index,
      struct urb *urb, usb_complete_t complete_fn,
      void *context)
{
 struct usb_device *udev = to_usb_device(dev->dev);
 unsigned int pipe;

 if (dir == USB_DIR_IN)
  pipe = usb_rcvbulkpipe(udev, dev->usb.in_ep[index]);
 else
  pipe = usb_sndbulkpipe(udev, dev->usb.out_ep[index]);

 urb->dev = udev;
 urb->pipe = pipe;
 urb->complete = complete_fn;
 urb->context = context;
}
