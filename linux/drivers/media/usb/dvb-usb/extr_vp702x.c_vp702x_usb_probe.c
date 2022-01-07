
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vp702x_device_state {int buf_len; int buf_mutex; int buf; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device {struct vp702x_device_state* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int adapter_nr ;
 int dvb_usb_device_exit (struct usb_interface*) ;
 int dvb_usb_device_init (struct usb_interface*,int *,int ,struct dvb_usb_device**,int ) ;
 int kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int vp702x_properties ;

__attribute__((used)) static int vp702x_usb_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 struct dvb_usb_device *d;
 struct vp702x_device_state *st;
 int ret;

 ret = dvb_usb_device_init(intf, &vp702x_properties,
       THIS_MODULE, &d, adapter_nr);
 if (ret)
  goto out;

 st = d->priv;
 st->buf_len = 16;
 st->buf = kmalloc(st->buf_len, GFP_KERNEL);
 if (!st->buf) {
  ret = -ENOMEM;
  dvb_usb_device_exit(intf);
  goto out;
 }
 mutex_init(&st->buf_mutex);

out:
 return ret;

}
