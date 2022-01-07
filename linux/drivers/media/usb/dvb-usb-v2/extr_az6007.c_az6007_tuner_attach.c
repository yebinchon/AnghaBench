
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dvb_usb_device {int i2c_adap; } ;
struct dvb_usb_adapter {TYPE_2__** fe; } ;
struct TYPE_5__ {int (* i2c_gate_ctrl ) (TYPE_2__*,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;


 int EINVAL ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 int az6007_mt2063_config ;
 int dvb_attach (int ,TYPE_2__*,int *,int *) ;
 int mt2063_attach ;
 int pr_debug (char*) ;
 int stub1 (TYPE_2__*,int) ;
 int stub2 (TYPE_2__*,int) ;

__attribute__((used)) static int az6007_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap_to_d(adap);

 pr_debug("attaching tuner mt2063\n");


 if (adap->fe[0]->ops.i2c_gate_ctrl)
  adap->fe[0]->ops.i2c_gate_ctrl(adap->fe[0], 1);
 if (!dvb_attach(mt2063_attach, adap->fe[0],
   &az6007_mt2063_config,
   &d->i2c_adap))
  return -EINVAL;

 if (adap->fe[0]->ops.i2c_gate_ctrl)
  adap->fe[0]->ops.i2c_gate_ctrl(adap->fe[0], 0);

 return 0;
}
