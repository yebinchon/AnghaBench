
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct sd {int dummy; } ;


 int THIS_MODULE ;
 scalar_t__ depth_mode ;
 int gspca_dev_probe (struct usb_interface*,struct usb_device_id const*,int *,int,int ) ;
 int sd_desc_depth ;
 int sd_desc_video ;

__attribute__((used)) static int sd_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 if (depth_mode)
  return gspca_dev_probe(intf, id, &sd_desc_depth,
           sizeof(struct sd), THIS_MODULE);
 else
  return gspca_dev_probe(intf, id, &sd_desc_video,
           sizeof(struct sd), THIS_MODULE);
}
