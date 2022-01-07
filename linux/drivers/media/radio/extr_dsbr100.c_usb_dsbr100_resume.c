
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct dsbr100_device {int v4l2_lock; int muted; } ;


 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ dsbr100_start (struct dsbr100_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dsbr100_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usb_dsbr100_resume(struct usb_interface *intf)
{
 struct dsbr100_device *radio = usb_get_intfdata(intf);

 mutex_lock(&radio->v4l2_lock);
 if (!radio->muted && dsbr100_start(radio) < 0)
  dev_warn(&intf->dev, "dsbr100_start failed\n");
 mutex_unlock(&radio->v4l2_lock);

 dev_info(&intf->dev, "coming out of suspend..\n");
 return 0;
}
