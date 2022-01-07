
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zd1301_dev {struct platform_device* platform_device_demod; struct i2c_client* i2c_client_tuner; } ;
struct usb_interface {int dev; } ;
struct TYPE_8__ {TYPE_3__* driver; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_usb_adapter {int dummy; } ;
struct TYPE_7__ {int owner; } ;
struct TYPE_5__ {int owner; } ;


 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct zd1301_dev* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int module_put (int ) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static int zd1301_frontend_detach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap_to_d(adap);
 struct zd1301_dev *dev = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 struct platform_device *pdev;
 struct i2c_client *client;

 dev_dbg(&intf->dev, "\n");

 client = dev->i2c_client_tuner;
 pdev = dev->platform_device_demod;


 if (client) {
  module_put(client->dev.driver->owner);
  i2c_unregister_device(client);
 }


 if (pdev) {
  module_put(pdev->dev.driver->owner);
  platform_device_unregister(pdev);
 }

 return 0;
}
