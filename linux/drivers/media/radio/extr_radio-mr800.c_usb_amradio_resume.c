
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct amradio_device {int lock; int muted; int curfreq; int stereo; } ;


 int amradio_set_freq (struct amradio_device*,int ) ;
 int amradio_set_mute (struct amradio_device*,int) ;
 int amradio_set_stereo (struct amradio_device*,int ) ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct amradio_device* to_amradio_dev (int ) ;
 int usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usb_amradio_resume(struct usb_interface *intf)
{
 struct amradio_device *radio = to_amradio_dev(usb_get_intfdata(intf));

 mutex_lock(&radio->lock);
 amradio_set_stereo(radio, radio->stereo);
 amradio_set_freq(radio, radio->curfreq);

 if (!radio->muted)
  amradio_set_mute(radio, 0);

 mutex_unlock(&radio->lock);

 dev_info(&intf->dev, "coming out of suspend..\n");
 return 0;
}
