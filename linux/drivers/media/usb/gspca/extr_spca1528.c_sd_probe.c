
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct sd {int dummy; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int gspca_dev_probe2 (struct usb_interface*,struct usb_device_id const*,int *,int,int ) ;
 int sd_desc ;

__attribute__((used)) static int sd_probe(struct usb_interface *intf,
   const struct usb_device_id *id)
{

 if (intf->cur_altsetting->desc.bInterfaceNumber != 1)
  return -ENODEV;

 return gspca_dev_probe2(intf, id, &sd_desc, sizeof(struct sd),
    THIS_MODULE);
}
