
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct uvc_device_info {int quirks; } ;
struct TYPE_13__ {char* model; char* serial; int hw_revision; int bus_info; int * dev; } ;
struct TYPE_12__ {TYPE_6__* mdev; } ;
struct uvc_device {int quirks; char* name; int uvc_version; int ref; TYPE_6__ mdev; TYPE_5__ vdev; struct uvc_device_info const* info; int intfnum; int intf; int udev; int lock; int nmappings; int streams; int chains; int entities; } ;
struct usb_interface {int dev; TYPE_3__* cur_altsetting; TYPE_1__* intf_assoc; } ;
struct usb_device_id {int idProduct; int idVendor; scalar_t__ driver_info; } ;
struct TYPE_11__ {int bcdDevice; int idProduct; int idVendor; } ;
struct usb_device {char* product; char* serial; TYPE_4__ descriptor; int devpath; } ;
struct TYPE_9__ {int iInterface; int bInterfaceNumber; } ;
struct TYPE_10__ {TYPE_2__ desc; } ;
struct TYPE_8__ {int iFunction; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_INFO ;
 int UVC_TRACE_PROBE ;
 int atomic_set (int *,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct uvc_device* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int media_device_init (TYPE_6__*) ;
 scalar_t__ media_device_register (TYPE_6__*) ;
 int mutex_init (int *) ;
 int snprintf (char*,int,char*,int,int) ;
 int strlcat (char*,char*,int) ;
 size_t strlen (char*) ;
 int strscpy (char*,char*,int) ;
 int usb_enable_autosuspend (struct usb_device*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_set_intfdata (struct usb_interface*,struct uvc_device*) ;
 int usb_string (struct usb_device*,int,int ,int) ;
 scalar_t__ uvc_ctrl_init_device (struct uvc_device*) ;
 int uvc_delete ;
 scalar_t__ uvc_parse_control (struct uvc_device*) ;
 int uvc_printk (int ,char*,...) ;
 struct uvc_device_info const uvc_quirk_none ;
 int uvc_quirks_param ;
 scalar_t__ uvc_register_chains (struct uvc_device*) ;
 scalar_t__ uvc_scan_device (struct uvc_device*) ;
 int uvc_status_init (struct uvc_device*) ;
 int uvc_trace (int ,char*,...) ;
 int uvc_unregister_video (struct uvc_device*) ;
 scalar_t__ v4l2_device_register (int *,TYPE_5__*) ;

__attribute__((used)) static int uvc_probe(struct usb_interface *intf,
       const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct uvc_device *dev;
 const struct uvc_device_info *info =
  (const struct uvc_device_info *)id->driver_info;
 int function;
 int ret;

 if (id->idVendor && id->idProduct)
  uvc_trace(UVC_TRACE_PROBE, "Probing known UVC device %s "
    "(%04x:%04x)\n", udev->devpath, id->idVendor,
    id->idProduct);
 else
  uvc_trace(UVC_TRACE_PROBE, "Probing generic UVC device %s\n",
    udev->devpath);


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0))
  return -ENOMEM;

 INIT_LIST_HEAD(&dev->entities);
 INIT_LIST_HEAD(&dev->chains);
 INIT_LIST_HEAD(&dev->streams);
 kref_init(&dev->ref);
 atomic_set(&dev->nmappings, 0);
 mutex_init(&dev->lock);

 dev->udev = usb_get_dev(udev);
 dev->intf = usb_get_intf(intf);
 dev->intfnum = intf->cur_altsetting->desc.bInterfaceNumber;
 dev->info = info ? info : &uvc_quirk_none;
 dev->quirks = uvc_quirks_param == -1
      ? dev->info->quirks : uvc_quirks_param;

 if (udev->product != ((void*)0))
  strscpy(dev->name, udev->product, sizeof(dev->name));
 else
  snprintf(dev->name, sizeof(dev->name),
    "UVC Camera (%04x:%04x)",
    le16_to_cpu(udev->descriptor.idVendor),
    le16_to_cpu(udev->descriptor.idProduct));






 if (intf->intf_assoc && intf->intf_assoc->iFunction != 0)
  function = intf->intf_assoc->iFunction;
 else
  function = intf->cur_altsetting->desc.iInterface;
 if (function != 0) {
  size_t len;

  strlcat(dev->name, ": ", sizeof(dev->name));
  len = strlen(dev->name);
  usb_string(udev, function, dev->name + len,
      sizeof(dev->name) - len);
 }


 if (uvc_parse_control(dev) < 0) {
  uvc_trace(UVC_TRACE_PROBE, "Unable to parse UVC "
   "descriptors.\n");
  goto error;
 }

 uvc_printk(KERN_INFO, "Found UVC %u.%02x device %s (%04x:%04x)\n",
  dev->uvc_version >> 8, dev->uvc_version & 0xff,
  udev->product ? udev->product : "<unnamed>",
  le16_to_cpu(udev->descriptor.idVendor),
  le16_to_cpu(udev->descriptor.idProduct));

 if (dev->quirks != dev->info->quirks) {
  uvc_printk(KERN_INFO, "Forcing device quirks to 0x%x by module "
   "parameter for testing purpose.\n", dev->quirks);
  uvc_printk(KERN_INFO, "Please report required quirks to the "
   "linux-uvc-devel mailing list.\n");
 }
 if (v4l2_device_register(&intf->dev, &dev->vdev) < 0)
  goto error;


 if (uvc_ctrl_init_device(dev) < 0)
  goto error;


 if (uvc_scan_device(dev) < 0)
  goto error;


 if (uvc_register_chains(dev) < 0)
  goto error;







 usb_set_intfdata(intf, dev);


 if ((ret = uvc_status_init(dev)) < 0) {
  uvc_printk(KERN_INFO, "Unable to initialize the status "
   "endpoint (%d), status interrupt will not be "
   "supported.\n", ret);
 }

 uvc_trace(UVC_TRACE_PROBE, "UVC device initialized.\n");
 usb_enable_autosuspend(udev);
 return 0;

error:
 uvc_unregister_video(dev);
 kref_put(&dev->ref, uvc_delete);
 return -ENODEV;
}
