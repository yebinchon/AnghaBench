
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {int dev; } ;
struct vprbrd {int* buf; TYPE_3__* usb_dev; TYPE_1__ pdev; int lock; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_9__ {int devnum; TYPE_2__* bus; } ;
struct TYPE_8__ {int busnum; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VPRBRD_USB_REQUEST_MAJOR ;
 int VPRBRD_USB_REQUEST_MINOR ;
 int VPRBRD_USB_TIMEOUT_MS ;
 int VPRBRD_USB_TYPE_IN ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,int,int ,int ) ;
 int dev_set_drvdata (int *,struct vprbrd*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct vprbrd*) ;
 struct vprbrd* kzalloc (int,int ) ;
 int mfd_add_hotplug_devices (int *,int ,int ) ;
 int mutex_init (int *) ;
 int usb_control_msg (TYPE_3__*,int,int ,int ,int,int,int*,int,int ) ;
 TYPE_3__* usb_get_dev (int ) ;
 int usb_put_dev (TYPE_3__*) ;
 int usb_rcvctrlpipe (TYPE_3__*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct vprbrd*) ;
 int vprbrd_devs ;

__attribute__((used)) static int vprbrd_probe(struct usb_interface *interface,
         const struct usb_device_id *id)
{
 struct vprbrd *vb;

 u16 version = 0;
 int pipe, ret;


 vb = kzalloc(sizeof(*vb), GFP_KERNEL);
 if (!vb)
  return -ENOMEM;

 mutex_init(&vb->lock);

 vb->usb_dev = usb_get_dev(interface_to_usbdev(interface));


 usb_set_intfdata(interface, vb);
 dev_set_drvdata(&vb->pdev.dev, vb);


 pipe = usb_rcvctrlpipe(vb->usb_dev, 0);
 ret = usb_control_msg(vb->usb_dev, pipe, VPRBRD_USB_REQUEST_MAJOR,
  VPRBRD_USB_TYPE_IN, 0x0000, 0x0000, vb->buf, 1,
  VPRBRD_USB_TIMEOUT_MS);
 if (ret == 1)
  version = vb->buf[0];

 ret = usb_control_msg(vb->usb_dev, pipe, VPRBRD_USB_REQUEST_MINOR,
  VPRBRD_USB_TYPE_IN, 0x0000, 0x0000, vb->buf, 1,
  VPRBRD_USB_TIMEOUT_MS);
 if (ret == 1) {
  version <<= 8;
  version = version | vb->buf[0];
 }

 dev_info(&interface->dev,
   "version %x.%02x found at bus %03d address %03d\n",
   version >> 8, version & 0xff,
   vb->usb_dev->bus->busnum, vb->usb_dev->devnum);

 ret = mfd_add_hotplug_devices(&interface->dev, vprbrd_devs,
          ARRAY_SIZE(vprbrd_devs));
 if (ret != 0) {
  dev_err(&interface->dev, "Failed to add mfd devices to core.");
  goto error;
 }

 return 0;

error:
 if (vb) {
  usb_put_dev(vb->usb_dev);
  kfree(vb);
 }

 return ret;
}
