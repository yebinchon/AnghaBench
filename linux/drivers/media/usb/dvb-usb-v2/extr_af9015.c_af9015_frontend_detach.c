
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct i2c_client {int dummy; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_usb_adapter {size_t id; } ;
struct af9015_state {struct i2c_client** demod_i2c_client; } ;


 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct af9015_state* adap_to_priv (struct dvb_usb_adapter*) ;
 int dev_dbg (int *,char*,size_t) ;
 int dvb_module_release (struct i2c_client*) ;

__attribute__((used)) static int af9015_frontend_detach(struct dvb_usb_adapter *adap)
{
 struct af9015_state *state = adap_to_priv(adap);
 struct dvb_usb_device *d = adap_to_d(adap);
 struct usb_interface *intf = d->intf;
 struct i2c_client *client;

 dev_dbg(&intf->dev, "adap id %u\n", adap->id);


 client = state->demod_i2c_client[adap->id];
 dvb_module_release(client);

 return 0;
}
