
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device {int dummy; } ;


 int THIS_MODULE ;
 int USB_WRITE_REMOTE ;
 int USB_WRITE_REMOTE_TYPE ;
 int adapter_nr ;
 int digitv_ctrl_msg (struct dvb_usb_device*,int ,int ,int*,int,int *,int ) ;
 int digitv_properties ;
 int dvb_usb_device_init (struct usb_interface*,int *,int ,struct dvb_usb_device**,int ) ;

__attribute__((used)) static int digitv_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 struct dvb_usb_device *d;
 int ret = dvb_usb_device_init(intf, &digitv_properties, THIS_MODULE, &d,
          adapter_nr);
 if (ret == 0) {
  u8 b[4] = { 0 };

  if (d != ((void*)0)) {
   b[0] = 1;
   digitv_ctrl_msg(d,USB_WRITE_REMOTE_TYPE,0,b,4,((void*)0),0);

   b[0] = 0;
   digitv_ctrl_msg(d,USB_WRITE_REMOTE,0,b,4,((void*)0),0);
  }
 }
 return ret;
}
