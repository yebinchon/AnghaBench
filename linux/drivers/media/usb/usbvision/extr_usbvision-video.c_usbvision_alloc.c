
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctrl_handler; } ;
struct usb_usbvision {TYPE_1__ v4l2_dev; int hdl; int ctrl_urb; int v4l2_lock; struct usb_device* dev; } ;
struct usb_interface {int dev; } ;
struct usb_device {int dummy; } ;


 int GFP_KERNEL ;
 int USBVISION_URB_FRAMES ;
 int kfree (struct usb_usbvision*) ;
 struct usb_usbvision* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int usb_alloc_urb (int ,int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 scalar_t__ v4l2_ctrl_handler_init (int *,int) ;
 scalar_t__ v4l2_device_register (int *,TYPE_1__*) ;
 int v4l2_device_unregister (TYPE_1__*) ;

__attribute__((used)) static struct usb_usbvision *usbvision_alloc(struct usb_device *dev,
          struct usb_interface *intf)
{
 struct usb_usbvision *usbvision;

 usbvision = kzalloc(sizeof(*usbvision), GFP_KERNEL);
 if (!usbvision)
  return ((void*)0);

 usbvision->dev = dev;
 if (v4l2_device_register(&intf->dev, &usbvision->v4l2_dev))
  goto err_free;

 if (v4l2_ctrl_handler_init(&usbvision->hdl, 4))
  goto err_unreg;
 usbvision->v4l2_dev.ctrl_handler = &usbvision->hdl;
 mutex_init(&usbvision->v4l2_lock);


 usbvision->ctrl_urb = usb_alloc_urb(USBVISION_URB_FRAMES, GFP_KERNEL);
 if (!usbvision->ctrl_urb)
  goto err_unreg;

 return usbvision;

err_unreg:
 v4l2_ctrl_handler_free(&usbvision->hdl);
 v4l2_device_unregister(&usbvision->v4l2_dev);
err_free:
 kfree(usbvision);
 return ((void*)0);
}
