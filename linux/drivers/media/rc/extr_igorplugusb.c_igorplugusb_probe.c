
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_8__ {int * parent; } ;
struct rc_dev {int allowed_protocols; int rx_resolution; int timeout; int map_name; int driver_name; struct igorplugusb* priv; TYPE_4__ dev; int input_id; int input_phys; int device_name; } ;
struct TYPE_7__ {int bRequestType; int wLength; int bRequest; } ;
struct igorplugusb {int timer; int urb; struct rc_dev* rc; int phys; int buf_in; TYPE_3__ request; int * dev; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;


 int DRIVER_DESC ;
 int DRIVER_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GET_INFRACODE ;
 int GFP_KERNEL ;
 int MS_TO_NS (int) ;
 int RC_DRIVER_IR_RAW ;
 int RC_MAP_HAUPPAUGE ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 int RC_PROTO_BIT_NEC ;
 int RC_PROTO_BIT_NEC32 ;
 int RC_PROTO_BIT_NECX ;
 int RC_PROTO_BIT_RC6_6A_20 ;
 int RC_PROTO_BIT_RC6_6A_24 ;
 int RC_PROTO_BIT_RC6_6A_32 ;
 int RC_PROTO_BIT_RC6_MCE ;
 int RC_PROTO_BIT_SANYO ;
 int RC_PROTO_BIT_SONY20 ;
 int SET_INFRABUFFER_EMPTY ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int cpu_to_le16 (int) ;
 int del_timer (int *) ;
 int dev_err (int *,char*,...) ;
 struct igorplugusb* devm_kzalloc (int *,int,int ) ;
 int igorplugusb_callback ;
 int igorplugusb_cmd (struct igorplugusb*,int ) ;
 int igorplugusb_timer ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int timer_setup (int *,int ,int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_xfer_control (struct usb_endpoint_descriptor*) ;
 int usb_fill_control_urb (int ,struct usb_device*,int ,int *,int ,int,int ,struct igorplugusb*) ;
 int usb_free_urb (int ) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct igorplugusb*) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static int igorplugusb_probe(struct usb_interface *intf,
     const struct usb_device_id *id)
{
 struct usb_device *udev;
 struct usb_host_interface *idesc;
 struct usb_endpoint_descriptor *ep;
 struct igorplugusb *ir;
 struct rc_dev *rc;
 int ret = -ENOMEM;

 udev = interface_to_usbdev(intf);
 idesc = intf->cur_altsetting;

 if (idesc->desc.bNumEndpoints != 1) {
  dev_err(&intf->dev, "incorrect number of endpoints");
  return -ENODEV;
 }

 ep = &idesc->endpoint[0].desc;
 if (!usb_endpoint_dir_in(ep) || !usb_endpoint_xfer_control(ep)) {
  dev_err(&intf->dev, "endpoint incorrect");
  return -ENODEV;
 }

 ir = devm_kzalloc(&intf->dev, sizeof(*ir), GFP_KERNEL);
 if (!ir)
  return -ENOMEM;

 ir->dev = &intf->dev;

 timer_setup(&ir->timer, igorplugusb_timer, 0);

 ir->request.bRequest = GET_INFRACODE;
 ir->request.bRequestType = USB_TYPE_VENDOR | USB_DIR_IN;
 ir->request.wLength = cpu_to_le16(sizeof(ir->buf_in));

 ir->urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!ir->urb)
  goto fail;

 usb_fill_control_urb(ir->urb, udev,
  usb_rcvctrlpipe(udev, 0), (uint8_t *)&ir->request,
  ir->buf_in, sizeof(ir->buf_in), igorplugusb_callback, ir);

 usb_make_path(udev, ir->phys, sizeof(ir->phys));

 rc = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!rc)
  goto fail;

 rc->device_name = DRIVER_DESC;
 rc->input_phys = ir->phys;
 usb_to_input_id(udev, &rc->input_id);
 rc->dev.parent = &intf->dev;




 rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER &
  ~(RC_PROTO_BIT_NEC | RC_PROTO_BIT_NECX | RC_PROTO_BIT_NEC32 |
    RC_PROTO_BIT_RC6_6A_20 | RC_PROTO_BIT_RC6_6A_24 |
    RC_PROTO_BIT_RC6_6A_32 | RC_PROTO_BIT_RC6_MCE |
    RC_PROTO_BIT_SONY20 | RC_PROTO_BIT_SANYO);

 rc->priv = ir;
 rc->driver_name = DRIVER_NAME;
 rc->map_name = RC_MAP_HAUPPAUGE;
 rc->timeout = MS_TO_NS(100);
 rc->rx_resolution = 85333;

 ir->rc = rc;
 ret = rc_register_device(rc);
 if (ret) {
  dev_err(&intf->dev, "failed to register rc device: %d", ret);
  goto fail;
 }

 usb_set_intfdata(intf, ir);

 igorplugusb_cmd(ir, SET_INFRABUFFER_EMPTY);

 return 0;
fail:
 rc_free_device(ir->rc);
 usb_free_urb(ir->urb);
 del_timer(&ir->timer);

 return ret;
}
