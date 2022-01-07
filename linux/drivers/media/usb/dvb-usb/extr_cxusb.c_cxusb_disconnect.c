
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_8__ {TYPE_3__* driver; } ;
struct i2c_client {TYPE_4__ dev; } ;
struct TYPE_6__ {TYPE_1__* devices; } ;
struct dvb_usb_device {TYPE_2__ props; struct cxusb_state* priv; } ;
struct cxusb_state {struct i2c_client* i2c_client_demod; struct i2c_client* i2c_client_tuner; } ;
struct TYPE_7__ {int owner; } ;
struct TYPE_5__ {int ** warm_ids; } ;


 size_t MEDION_MD95700 ;
 int cxusb_medion_unregister_analog (struct dvb_usb_device*) ;
 int * cxusb_table ;
 int dvb_usb_device_exit (struct usb_interface*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int module_put (int ) ;
 struct dvb_usb_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void cxusb_disconnect(struct usb_interface *intf)
{
 struct dvb_usb_device *d = usb_get_intfdata(intf);
 struct cxusb_state *st = d->priv;
 struct i2c_client *client;

 if (d->props.devices[0].warm_ids[0] == &cxusb_table[MEDION_MD95700])
  cxusb_medion_unregister_analog(d);


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
