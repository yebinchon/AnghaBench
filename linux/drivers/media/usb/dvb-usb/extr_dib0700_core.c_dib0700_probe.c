
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {int bulk_mode; } ;
struct TYPE_5__ {TYPE_1__ core; } ;
struct TYPE_6__ {TYPE_2__ rc; } ;
struct dvb_usb_device {TYPE_3__ props; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; void* nb_packet_buffer_size; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int adapter_nr ;
 int deb_info (char*,void*,void*,void*,void*) ;
 int dib0700_device_count ;
 int * dib0700_devices ;
 int dib0700_get_version (struct dvb_usb_device*,void**,void**,void**,void**) ;
 int dib0700_rc_setup (struct dvb_usb_device*,struct usb_interface*) ;
 scalar_t__ dvb_usb_device_init (struct usb_interface*,int *,int ,struct dvb_usb_device**,int ) ;
 scalar_t__ nb_packet_buffer_size ;

__attribute__((used)) static int dib0700_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 int i;
 struct dvb_usb_device *dev;

 for (i = 0; i < dib0700_device_count; i++)
  if (dvb_usb_device_init(intf, &dib0700_devices[i], THIS_MODULE,
      &dev, adapter_nr) == 0) {
   struct dib0700_state *st = dev->priv;
   u32 hwversion, romversion, fw_version, fwtype;

   dib0700_get_version(dev, &hwversion, &romversion,
    &fw_version, &fwtype);

   deb_info("Firmware version: %x, %d, 0x%x, %d\n",
    hwversion, romversion, fw_version, fwtype);

   st->fw_version = fw_version;
   st->nb_packet_buffer_size = (u32)nb_packet_buffer_size;


   if (st->fw_version >= 0x10200)
    dev->props.rc.core.bulk_mode = 1;
   else
    dev->props.rc.core.bulk_mode = 0;

   dib0700_rc_setup(dev, intf);

   return 0;
  }

 return -ENODEV;
}
