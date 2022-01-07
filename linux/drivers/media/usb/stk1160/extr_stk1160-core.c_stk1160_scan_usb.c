
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int num_altsetting; TYPE_4__* altsetting; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; int wMaxPacketSize; } ;
struct TYPE_6__ {int idProduct; int idVendor; } ;
struct usb_device {int speed; char* manufacturer; char* product; int dev; TYPE_2__ descriptor; } ;
struct TYPE_7__ {int bInterfaceNumber; int bNumEndpoints; } ;
struct TYPE_8__ {TYPE_3__ desc; TYPE_1__* endpoint; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;





 int dev_err (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*,...) ;
 int hb_mult (int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_isoc (struct usb_endpoint_descriptor const*) ;

__attribute__((used)) static int stk1160_scan_usb(struct usb_interface *intf, struct usb_device *udev,
  unsigned int *max_pkt_size)
{
 int i, e, sizedescr, size, ifnum;
 const struct usb_endpoint_descriptor *desc;

 bool has_video = 0, has_audio = 0;
 const char *speed;

 ifnum = intf->altsetting[0].desc.bInterfaceNumber;


 for (i = 0; i < intf->num_altsetting; i++) {

  for (e = 0; e < intf->altsetting[i].desc.bNumEndpoints; e++) {


   desc = &intf->altsetting[i].endpoint[e].desc;
   sizedescr = le16_to_cpu(desc->wMaxPacketSize);
   size = sizedescr & 0x7ff;

   if (udev->speed == 129)
    size = size * hb_mult(sizedescr);

   if (usb_endpoint_xfer_isoc(desc) &&
       usb_endpoint_dir_in(desc)) {
    switch (desc->bEndpointAddress) {
    case 132:
     has_audio = 1;
     break;
    case 131:
     has_video = 1;
     max_pkt_size[i] = size;
     break;
    }
   }
  }
 }


 if (!(has_audio || has_video)) {
  dev_err(&udev->dev, "no audio or video endpoints found\n");
  return -ENODEV;
 }

 switch (udev->speed) {
 case 128:
  speed = "1.5";
  break;
 case 130:
  speed = "12";
  break;
 case 129:
  speed = "480";
  break;
 default:
  speed = "unknown";
 }

 dev_info(&udev->dev, "New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\n",
  udev->manufacturer ? udev->manufacturer : "",
  udev->product ? udev->product : "",
  speed,
  le16_to_cpu(udev->descriptor.idVendor),
  le16_to_cpu(udev->descriptor.idProduct),
  ifnum,
  intf->altsetting->desc.bInterfaceNumber);


 if (has_audio)
  dev_warn(&udev->dev, "audio interface %d found.\n				This is not implemented by this driver,				you should use snd-usb-audio instead\n", ifnum);



 if (has_video)
  dev_info(&udev->dev, "video interface %d found\n",
    ifnum);






 if (udev->speed != 129)
  dev_warn(&udev->dev, "must be connected to a high-speed USB 2.0 port\n				You may not be able to stream video smoothly\n");


 return 0;
}
