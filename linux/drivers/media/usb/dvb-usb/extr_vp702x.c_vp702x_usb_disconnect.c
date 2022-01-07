
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vp702x_device_state {int buf_mutex; int buf; } ;
struct usb_interface {int dummy; } ;
struct dvb_usb_device {struct vp702x_device_state* priv; } ;


 int dvb_usb_device_exit (struct usb_interface*) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void vp702x_usb_disconnect(struct usb_interface *intf)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);
 struct vp702x_device_state *st = d->priv;
 mutex_lock(&st->buf_mutex);
 kfree(st->buf);
 mutex_unlock(&st->buf_mutex);
 dvb_usb_device_exit(intf);
}
