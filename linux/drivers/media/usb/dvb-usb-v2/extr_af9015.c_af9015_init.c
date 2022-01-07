
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct af9015_state {int regmap; int fe_mutex; } ;


 struct af9015_state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*) ;
 int mutex_init (int *) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int af9015_init(struct dvb_usb_device *d)
{
 struct af9015_state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 int ret;

 dev_dbg(&intf->dev, "\n");

 mutex_init(&state->fe_mutex);


 ret = regmap_write(state->regmap, 0x98e9, 0xff);
 if (ret)
  goto error;

error:
 return ret;
}
