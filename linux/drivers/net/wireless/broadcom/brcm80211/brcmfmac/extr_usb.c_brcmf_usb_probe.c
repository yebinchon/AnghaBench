
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; size_t bNumEndpoints; int bInterfaceNumber; } ;
struct usb_interface {TYPE_3__* altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int idProduct; int idVendor; } ;
struct TYPE_4__ {int bNumConfigurations; scalar_t__ bDeviceClass; } ;
struct usb_device {scalar_t__ speed; TYPE_1__ descriptor; int dev; } ;
struct brcmf_usbdev_info {scalar_t__ rx_pipe; scalar_t__ tx_pipe; int dev_init_done; int ifnum; int * dev; struct usb_device* usbdev; } ;
struct TYPE_6__ {TYPE_2__* endpoint; struct usb_interface_descriptor desc; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int USB ;
 scalar_t__ USB_CLASS_MISC ;
 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 scalar_t__ USB_CLASS_WIRELESS_CONTROLLER ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_SUPER ;
 scalar_t__ USB_SPEED_SUPER_PLUS ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_err (char*,...) ;
 int brcmf_usb_probe_cb (struct brcmf_usbdev_info*) ;
 int complete (int *) ;
 int init_completion (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct brcmf_usbdev_info*) ;
 struct brcmf_usbdev_info* kzalloc (int,int ) ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 size_t usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_rcvbulkpipe (struct usb_device*,size_t) ;
 int usb_set_intfdata (struct usb_interface*,struct brcmf_usbdev_info*) ;
 scalar_t__ usb_sndbulkpipe (struct usb_device*,size_t) ;

__attribute__((used)) static int
brcmf_usb_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_device *usb = interface_to_usbdev(intf);
 struct brcmf_usbdev_info *devinfo;
 struct usb_interface_descriptor *desc;
 struct usb_endpoint_descriptor *endpoint;
 int ret = 0;
 u32 num_of_eps;
 u8 endpoint_num, ep;

 brcmf_dbg(USB, "Enter 0x%04x:0x%04x\n", id->idVendor, id->idProduct);

 devinfo = kzalloc(sizeof(*devinfo), GFP_ATOMIC);
 if (devinfo == ((void*)0))
  return -ENOMEM;

 devinfo->usbdev = usb;
 devinfo->dev = &usb->dev;



 init_completion(&devinfo->dev_init_done);

 usb_set_intfdata(intf, devinfo);


 if (usb->descriptor.bNumConfigurations != 1) {
  brcmf_err("Number of configurations: %d not supported\n",
     usb->descriptor.bNumConfigurations);
  ret = -ENODEV;
  goto fail;
 }

 if ((usb->descriptor.bDeviceClass != USB_CLASS_VENDOR_SPEC) &&
     (usb->descriptor.bDeviceClass != USB_CLASS_MISC) &&
     (usb->descriptor.bDeviceClass != USB_CLASS_WIRELESS_CONTROLLER)) {
  brcmf_err("Device class: 0x%x not supported\n",
     usb->descriptor.bDeviceClass);
  ret = -ENODEV;
  goto fail;
 }

 desc = &intf->altsetting[0].desc;
 if ((desc->bInterfaceClass != USB_CLASS_VENDOR_SPEC) ||
     (desc->bInterfaceSubClass != 2) ||
     (desc->bInterfaceProtocol != 0xff)) {
  brcmf_err("non WLAN interface %d: 0x%x:0x%x:0x%x\n",
     desc->bInterfaceNumber, desc->bInterfaceClass,
     desc->bInterfaceSubClass, desc->bInterfaceProtocol);
  ret = -ENODEV;
  goto fail;
 }

 num_of_eps = desc->bNumEndpoints;
 for (ep = 0; ep < num_of_eps; ep++) {
  endpoint = &intf->altsetting[0].endpoint[ep].desc;
  endpoint_num = usb_endpoint_num(endpoint);
  if (!usb_endpoint_xfer_bulk(endpoint))
   continue;
  if (usb_endpoint_dir_in(endpoint)) {
   if (!devinfo->rx_pipe)
    devinfo->rx_pipe =
     usb_rcvbulkpipe(usb, endpoint_num);
  } else {
   if (!devinfo->tx_pipe)
    devinfo->tx_pipe =
     usb_sndbulkpipe(usb, endpoint_num);
  }
 }
 if (devinfo->rx_pipe == 0) {
  brcmf_err("No RX (in) Bulk EP found\n");
  ret = -ENODEV;
  goto fail;
 }
 if (devinfo->tx_pipe == 0) {
  brcmf_err("No TX (out) Bulk EP found\n");
  ret = -ENODEV;
  goto fail;
 }

 devinfo->ifnum = desc->bInterfaceNumber;

 if (usb->speed == USB_SPEED_SUPER_PLUS)
  brcmf_dbg(USB, "Broadcom super speed plus USB WLAN interface detected\n");
 else if (usb->speed == USB_SPEED_SUPER)
  brcmf_dbg(USB, "Broadcom super speed USB WLAN interface detected\n");
 else if (usb->speed == USB_SPEED_HIGH)
  brcmf_dbg(USB, "Broadcom high speed USB WLAN interface detected\n");
 else
  brcmf_dbg(USB, "Broadcom full speed USB WLAN interface detected\n");

 ret = brcmf_usb_probe_cb(devinfo);
 if (ret)
  goto fail;


 return 0;

fail:
 complete(&devinfo->dev_init_done);
 kfree(devinfo);
 usb_set_intfdata(intf, ((void*)0));
 return ret;
}
