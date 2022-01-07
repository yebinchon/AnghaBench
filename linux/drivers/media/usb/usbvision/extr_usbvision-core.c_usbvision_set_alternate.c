
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_usbvision {int iface_alt; int num_alt; scalar_t__* alt_max_pkt_size; scalar_t__ isoc_packet_size; TYPE_1__* dev; int iface; } ;
struct TYPE_2__ {int dev; } ;


 int DBG_FUNC ;
 int DBG_ISOC ;
 int PDEBUG (int ,char*,scalar_t__,...) ;
 int dev_err (int *,char*,size_t,int) ;
 int usb_set_interface (TYPE_1__*,int ,size_t) ;

int usbvision_set_alternate(struct usb_usbvision *dev)
{
 int err_code, prev_alt = dev->iface_alt;
 int i;

 dev->iface_alt = 0;
 for (i = 0; i < dev->num_alt; i++)
  if (dev->alt_max_pkt_size[i] > dev->alt_max_pkt_size[dev->iface_alt])
   dev->iface_alt = i;

 if (dev->iface_alt != prev_alt) {
  dev->isoc_packet_size = dev->alt_max_pkt_size[dev->iface_alt];
  PDEBUG(DBG_FUNC, "setting alternate %d with max_packet_size=%u",
    dev->iface_alt, dev->isoc_packet_size);
  err_code = usb_set_interface(dev->dev, dev->iface, dev->iface_alt);
  if (err_code < 0) {
   dev_err(&dev->dev->dev,
    "cannot change alternate number to %d (error=%i)\n",
     dev->iface_alt, err_code);
   return err_code;
  }
 }

 PDEBUG(DBG_ISOC, "ISO Packet Length:%d", dev->isoc_packet_size);

 return 0;
}
