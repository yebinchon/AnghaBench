
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;



 int af9035_tuner_callback (struct dvb_usb_device*,int,int) ;
 int dev_dbg (int *,char*,int,int,int) ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int af9035_frontend_callback(void *adapter_priv, int component,
        int cmd, int arg)
{
 struct i2c_adapter *adap = adapter_priv;
 struct dvb_usb_device *d = i2c_get_adapdata(adap);
 struct usb_interface *intf = d->intf;

 dev_dbg(&intf->dev, "component=%d cmd=%d arg=%d\n",
  component, cmd, arg);

 switch (component) {
 case 128:
  return af9035_tuner_callback(d, cmd, arg);
 default:
  break;
 }

 return 0;
}
