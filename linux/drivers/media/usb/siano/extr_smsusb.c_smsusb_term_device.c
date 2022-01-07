
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct smsusb_device_t {scalar_t__ coredev; int state; } ;


 int SMSUSB_DISCONNECTED ;
 int kfree (struct smsusb_device_t*) ;
 int pr_debug (char*,struct smsusb_device_t*) ;
 int smscore_unregister_device (scalar_t__) ;
 int smsusb_stop_streaming (struct smsusb_device_t*) ;
 struct smsusb_device_t* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void smsusb_term_device(struct usb_interface *intf)
{
 struct smsusb_device_t *dev = usb_get_intfdata(intf);

 if (dev) {
  dev->state = SMSUSB_DISCONNECTED;

  smsusb_stop_streaming(dev);


  if (dev->coredev)
   smscore_unregister_device(dev->coredev);

  pr_debug("device 0x%p destroyed\n", dev);
  kfree(dev);
 }

 usb_set_intfdata(intf, ((void*)0));
}
