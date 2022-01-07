
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtl28xxu_dev {int tuner; } ;
struct TYPE_4__ {struct device* parent; } ;
struct i2c_adapter {TYPE_2__ dev; } ;
struct dvb_usb_device {TYPE_1__* intf; struct rtl28xxu_dev* priv; } ;
struct device {int * type; } ;
struct TYPE_3__ {int dev; } ;



 int EINVAL ;


 int dev_dbg (int *,char*,int,int,int) ;
 int i2c_adapter_type ;
 struct dvb_usb_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int rtl2832u_fc0012_tuner_callback (struct dvb_usb_device*,int,int) ;
 int rtl2832u_tua9001_tuner_callback (struct dvb_usb_device*,int,int) ;
 struct i2c_adapter* to_i2c_adapter (struct device*) ;

__attribute__((used)) static int rtl2832u_frontend_callback(void *adapter_priv, int component,
  int cmd, int arg)
{
 struct i2c_adapter *adapter = adapter_priv;
 struct device *parent = adapter->dev.parent;
 struct i2c_adapter *parent_adapter;
 struct dvb_usb_device *d;
 struct rtl28xxu_dev *dev;







 if (parent != ((void*)0) && parent->type == &i2c_adapter_type)
  parent_adapter = to_i2c_adapter(parent);
 else
  return -EINVAL;

 d = i2c_get_adapdata(parent_adapter);
 dev = d->priv;

 dev_dbg(&d->intf->dev, "component=%d cmd=%d arg=%d\n",
  component, cmd, arg);

 switch (component) {
 case 130:
  switch (dev->tuner) {
  case 129:
   return rtl2832u_fc0012_tuner_callback(d, cmd, arg);
  case 128:
   return rtl2832u_tua9001_tuner_callback(d, cmd, arg);
  }
 }

 return 0;
}
