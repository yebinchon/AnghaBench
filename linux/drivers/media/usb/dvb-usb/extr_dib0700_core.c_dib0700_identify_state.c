
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct dvb_usb_device_description {int dummy; } ;
typedef scalar_t__ s16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int REQUEST_GET_VERSION ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int deb_info (char*,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 scalar_t__ usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

int dib0700_identify_state(struct usb_device *udev, struct dvb_usb_device_properties *props,
   struct dvb_usb_device_description **desc, int *cold)
{
 s16 ret;
 u8 *b;

 b = kmalloc(16, GFP_KERNEL);
 if (!b)
  return -ENOMEM;


 ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
  REQUEST_GET_VERSION, USB_TYPE_VENDOR | USB_DIR_IN, 0, 0, b, 16, USB_CTRL_GET_TIMEOUT);

 deb_info("FW GET_VERSION length: %d\n",ret);

 *cold = ret <= 0;
 deb_info("cold: %d\n", *cold);

 kfree(b);
 return 0;
}
