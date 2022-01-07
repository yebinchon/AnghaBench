
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_device {int dummy; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int mutex; } ;
struct shark_device {int v4l2_dev; TYPE_1__ tea; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radio_tea5777_exit (TYPE_1__*) ;
 int shark_unregister_leds (struct shark_device*) ;
 struct v4l2_device* usb_get_intfdata (struct usb_interface*) ;
 struct shark_device* v4l2_dev_to_shark (struct v4l2_device*) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;

__attribute__((used)) static void usb_shark_disconnect(struct usb_interface *intf)
{
 struct v4l2_device *v4l2_dev = usb_get_intfdata(intf);
 struct shark_device *shark = v4l2_dev_to_shark(v4l2_dev);

 mutex_lock(&shark->tea.mutex);
 v4l2_device_disconnect(&shark->v4l2_dev);
 radio_tea5777_exit(&shark->tea);
 mutex_unlock(&shark->tea.mutex);

 shark_unregister_leds(shark);

 v4l2_device_put(&shark->v4l2_dev);
}
