
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl28xxu_dev {struct i2c_client* i2c_client_demod; struct i2c_client* i2c_client_slave_demod; } ;
struct TYPE_4__ {TYPE_3__* driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct dvb_usb_device {TYPE_2__* intf; } ;
struct dvb_usb_adapter {int dummy; } ;
struct TYPE_6__ {int owner; } ;
struct TYPE_5__ {int dev; } ;


 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct rtl28xxu_dev* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int module_put (int ) ;

__attribute__((used)) static int rtl28xxu_frontend_detach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap_to_d(adap);
 struct rtl28xxu_dev *dev = d_to_priv(d);
 struct i2c_client *client;

 dev_dbg(&d->intf->dev, "\n");


 client = dev->i2c_client_slave_demod;
 if (client) {
  module_put(client->dev.driver->owner);
  i2c_unregister_device(client);
 }


 client = dev->i2c_client_demod;
 if (client) {
  module_put(client->dev.driver->owner);
  i2c_unregister_device(client);
 }

 return 0;
}
