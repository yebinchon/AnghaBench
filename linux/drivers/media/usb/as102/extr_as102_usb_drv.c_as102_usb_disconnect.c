
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct as102_dev_t {int kref; } ;


 int DRIVER_NAME ;
 int as102_dvb_unregister (struct as102_dev_t*) ;
 int as102_free_usb_stream_buffer (struct as102_dev_t*) ;
 int as102_usb_class_driver ;
 int as102_usb_release ;
 int kref_put (int *,int ) ;
 int pr_info (char*,int ) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct as102_dev_t* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void as102_usb_disconnect(struct usb_interface *intf)
{
 struct as102_dev_t *as102_dev;


 as102_dev = usb_get_intfdata(intf);


 as102_dvb_unregister(as102_dev);


 as102_free_usb_stream_buffer(as102_dev);

 usb_set_intfdata(intf, ((void*)0));


 usb_deregister_dev(intf, &as102_usb_class_driver);


 kref_put(&as102_dev->kref, as102_usb_release);

 pr_info("%s: device has been disconnected\n", DRIVER_NAME);
}
