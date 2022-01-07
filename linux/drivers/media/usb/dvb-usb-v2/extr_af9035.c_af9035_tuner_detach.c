
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct state {struct platform_device** platform_device_tuner; int * i2c_client; TYPE_1__* af9033_config; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct platform_device {TYPE_3__ dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_usb_adapter {size_t id; } ;
struct TYPE_5__ {int owner; } ;
struct TYPE_4__ {int tuner; } ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct state* adap_to_priv (struct dvb_usb_adapter*) ;
 int af9035_del_i2c_dev (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,size_t) ;
 int module_put (int ) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static int af9035_tuner_detach(struct dvb_usb_adapter *adap)
{
 struct state *state = adap_to_priv(adap);
 struct dvb_usb_device *d = adap_to_d(adap);
 struct usb_interface *intf = d->intf;

 dev_dbg(&intf->dev, "adap->id=%d\n", adap->id);

 switch (state->af9033_config[adap->id].tuner) {
 case 128:
 case 135:
  if (adap->id == 1) {
   if (state->i2c_client[3])
    af9035_del_i2c_dev(d);
  } else if (adap->id == 0) {
   if (state->i2c_client[1])
    af9035_del_i2c_dev(d);
  }
  break;
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 {
  struct platform_device *pdev;

  pdev = state->platform_device_tuner[adap->id];
  if (pdev) {
   module_put(pdev->dev.driver->owner);
   platform_device_unregister(pdev);
  }
  break;
 }
 }

 return 0;
}
