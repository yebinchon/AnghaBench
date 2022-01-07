
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct si470x_device {int read_queue; scalar_t__ int_in_urb; scalar_t__ int_in_running; } ;
typedef int pm_message_t ;


 int dev_info (int *,char*) ;
 int si470x_stop (struct si470x_device*) ;
 struct si470x_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int si470x_usb_driver_suspend(struct usb_interface *intf,
  pm_message_t message)
{
 struct si470x_device *radio = usb_get_intfdata(intf);

 dev_info(&intf->dev, "suspending now...\n");


 if (radio->int_in_running) {
  radio->int_in_running = 0;
  if (radio->int_in_urb)
   usb_kill_urb(radio->int_in_urb);
 }


 wake_up_interruptible(&radio->read_queue);


 si470x_stop(radio);
 return 0;
}
