
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct amradio_device {int muted; int lock; } ;
typedef int pm_message_t ;


 int amradio_set_mute (struct amradio_device*,int) ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct amradio_device* to_amradio_dev (int ) ;
 int usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usb_amradio_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct amradio_device *radio = to_amradio_dev(usb_get_intfdata(intf));

 mutex_lock(&radio->lock);
 if (!radio->muted) {
  amradio_set_mute(radio, 1);
  radio->muted = 0;
 }
 mutex_unlock(&radio->lock);

 dev_info(&intf->dev, "going into suspend..\n");
 return 0;
}
