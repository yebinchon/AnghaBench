
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_interface {int num_altsetting; int needs_remote_wakeup; TYPE_2__* cur_altsetting; int dev; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct hso_shared_int {int dummy; } ;
struct hso_device {int dummy; } ;
struct TYPE_3__ {int bInterfaceClass; int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int ENODEV ;

 int HSO_INTF_MASK ;

 int HSO_PORT_MASK ;
 int HSO_PORT_NETWORK ;
 int dev_err (int *,char*) ;
 int disable_net ;
 struct hso_device* hso_create_bulk_serial_device (struct usb_interface*,int) ;
 struct hso_device* hso_create_mux_serial_device (struct usb_interface*,int,struct hso_shared_int*) ;
 struct hso_device* hso_create_net_device (struct usb_interface*,int) ;
 struct hso_shared_int* hso_create_shared_int (struct usb_interface*) ;
 int hso_free_interface (struct usb_interface*) ;
 int hso_get_config_data (struct usb_interface*) ;
 int hso_get_mux_ports (struct usb_interface*,unsigned char*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int usb_set_interface (int ,int,int) ;
 int usb_set_intfdata (struct usb_interface*,struct hso_device*) ;

__attribute__((used)) static int hso_probe(struct usb_interface *interface,
       const struct usb_device_id *id)
{
 int mux, i, if_num, port_spec;
 unsigned char port_mask;
 struct hso_device *hso_dev = ((void*)0);
 struct hso_shared_int *shared_int;
 struct hso_device *tmp_dev = ((void*)0);

 if (interface->cur_altsetting->desc.bInterfaceClass != 0xFF) {
  dev_err(&interface->dev, "Not our interface\n");
  return -ENODEV;
 }

 if_num = interface->cur_altsetting->desc.bInterfaceNumber;



 if (id->driver_info) {


  for (i = 0; i <= if_num; ++i)
   if (((u32 *)(id->driver_info))[i] == 0)
    goto exit;
  port_spec = ((u32 *)(id->driver_info))[if_num];
 } else {
  port_spec = hso_get_config_data(interface);
  if (port_spec < 0)
   goto exit;
 }



 if (interface->num_altsetting > 1)
  usb_set_interface(interface_to_usbdev(interface), if_num, 1);
 interface->needs_remote_wakeup = 1;


 switch (port_spec & HSO_INTF_MASK) {
 case 128:
  if ((port_spec & HSO_PORT_MASK) == HSO_PORT_NETWORK) {

   if (!disable_net) {
    hso_dev = hso_create_net_device(interface,
        port_spec);
    if (!hso_dev)
     goto exit;
    tmp_dev = hso_dev;
   }
  }

  if (hso_get_mux_ports(interface, &port_mask))

   goto exit;

  shared_int = hso_create_shared_int(interface);
  if (!shared_int)
   goto exit;

  for (i = 1, mux = 0; i < 0x100; i = i << 1, mux++) {
   if (port_mask & i) {
    hso_dev = hso_create_mux_serial_device(
      interface, i, shared_int);
    if (!hso_dev)
     goto exit;
   }
  }

  if (tmp_dev)
   hso_dev = tmp_dev;
  break;

 case 129:

  if ((port_spec & HSO_PORT_MASK) == HSO_PORT_NETWORK) {
   if (!disable_net)
    hso_dev =
        hso_create_net_device(interface, port_spec);
  } else {
   hso_dev =
       hso_create_bulk_serial_device(interface, port_spec);
  }
  if (!hso_dev)
   goto exit;
  break;
 default:
  goto exit;
 }


 usb_set_intfdata(interface, hso_dev);


 return 0;
exit:
 hso_free_interface(interface);
 return -ENODEV;
}
