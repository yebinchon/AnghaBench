
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct dvb_usb_device {TYPE_1__* desc; } ;
typedef int name ;
struct TYPE_2__ {char const* name; } ;


 int dvb_usb_exit (struct dvb_usb_device*) ;
 int info (char*,char*) ;
 int strscpy (char*,char const*,int) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

void dvb_usb_device_exit(struct usb_interface *intf)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);
 const char *default_name = "generic DVB-USB module";
 char name[40];

 usb_set_intfdata(intf, ((void*)0));
 if (d != ((void*)0) && d->desc != ((void*)0)) {
  strscpy(name, d->desc->name, sizeof(name));
  dvb_usb_exit(d);
 } else {
  strscpy(name, default_name, sizeof(name));
 }
 info("%s successfully deinitialized and disconnected.", name);

}
