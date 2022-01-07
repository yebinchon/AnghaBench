
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dw2102_state {struct i2c_client* i2c_client_demod; struct i2c_client* i2c_client_tuner; } ;
struct dvb_usb_device {scalar_t__ priv; } ;
struct TYPE_3__ {int owner; } ;


 int dvb_usb_device_exit (struct usb_interface*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int module_put (int ) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void dw2102_disconnect(struct usb_interface *intf)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);
 struct dw2102_state *st = (struct dw2102_state *)d->priv;
 struct i2c_client *client;


 client = st->i2c_client_tuner;
 if (client) {
  module_put(client->dev.driver->owner);
  i2c_unregister_device(client);
 }


 client = st->i2c_client_demod;
 if (client) {
  module_put(client->dev.driver->owner);
  i2c_unregister_device(client);
 }

 dvb_usb_device_exit(intf);
}
