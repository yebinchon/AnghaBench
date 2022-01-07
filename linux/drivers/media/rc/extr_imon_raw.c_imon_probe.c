
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_6__ {int * parent; } ;
struct rc_dev {char* device_name; struct imon* priv; int rx_resolution; int map_name; int allowed_protocols; TYPE_3__ dev; int input_id; int input_phys; int driver_name; } ;
struct imon {int ir_urb; struct rc_dev* rcdev; int phys; int ir_buf; int * dev; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int BIT_DURATION ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KBUILD_MODNAME ;
 int RC_DRIVER_IR_RAW ;
 int RC_MAP_IMON_RSC ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 int dev_err (int *,char*) ;
 struct imon* devm_kmalloc (int *,int,int ) ;
 struct rc_dev* devm_rc_allocate_device (int *,int ) ;
 int devm_rc_register_device (int *,struct rc_dev*) ;
 int imon_ir_rx ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (int ,struct usb_device*,int ,int *,int,int ,struct imon*,int ) ;
 int usb_free_urb (int ) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct imon*) ;
 int usb_submit_urb (int ,int ) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static int imon_probe(struct usb_interface *intf,
        const struct usb_device_id *id)
{
 struct usb_endpoint_descriptor *ir_ep = ((void*)0);
 struct usb_host_interface *idesc;
 struct usb_device *udev;
 struct rc_dev *rcdev;
 struct imon *imon;
 int i, ret;

 udev = interface_to_usbdev(intf);
 idesc = intf->cur_altsetting;

 for (i = 0; i < idesc->desc.bNumEndpoints; i++) {
  struct usb_endpoint_descriptor *ep = &idesc->endpoint[i].desc;

  if (usb_endpoint_is_int_in(ep)) {
   ir_ep = ep;
   break;
  }
 }

 if (!ir_ep) {
  dev_err(&intf->dev, "IR endpoint missing");
  return -ENODEV;
 }

 imon = devm_kmalloc(&intf->dev, sizeof(*imon), GFP_KERNEL);
 if (!imon)
  return -ENOMEM;

 imon->ir_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!imon->ir_urb)
  return -ENOMEM;

 imon->dev = &intf->dev;
 usb_fill_int_urb(imon->ir_urb, udev,
    usb_rcvintpipe(udev, ir_ep->bEndpointAddress),
    &imon->ir_buf, sizeof(imon->ir_buf),
    imon_ir_rx, imon, ir_ep->bInterval);

 rcdev = devm_rc_allocate_device(&intf->dev, RC_DRIVER_IR_RAW);
 if (!rcdev) {
  ret = -ENOMEM;
  goto free_urb;
 }

 usb_make_path(udev, imon->phys, sizeof(imon->phys));

 rcdev->device_name = "iMON Station";
 rcdev->driver_name = KBUILD_MODNAME;
 rcdev->input_phys = imon->phys;
 usb_to_input_id(udev, &rcdev->input_id);
 rcdev->dev.parent = &intf->dev;
 rcdev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
 rcdev->map_name = RC_MAP_IMON_RSC;
 rcdev->rx_resolution = BIT_DURATION;
 rcdev->priv = imon;

 ret = devm_rc_register_device(&intf->dev, rcdev);
 if (ret)
  goto free_urb;

 imon->rcdev = rcdev;

 ret = usb_submit_urb(imon->ir_urb, GFP_KERNEL);
 if (ret)
  goto free_urb;

 usb_set_intfdata(intf, imon);

 return 0;

free_urb:
 usb_free_urb(imon->ir_urb);
 return ret;
}
