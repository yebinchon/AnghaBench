
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int adapter_nr ;
 scalar_t__ dvb_usb_device_init (struct usb_interface*,int *,int ,int *,int ) ;
 int pctv452e_properties ;
 int tt_connect_s2_3600_properties ;

__attribute__((used)) static int pctv452e_usb_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 if (0 == dvb_usb_device_init(intf, &pctv452e_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &tt_connect_s2_3600_properties,
     THIS_MODULE, ((void*)0), adapter_nr))
  return 0;

 return -ENODEV;
}
