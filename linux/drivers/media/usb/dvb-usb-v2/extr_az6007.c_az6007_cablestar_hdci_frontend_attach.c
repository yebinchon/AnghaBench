
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_device {int i2c_adap; } ;
struct dvb_usb_adapter {TYPE_2__** fe; } ;
struct az6007_device_state {int gate_ctrl; } ;
struct TYPE_3__ {int i2c_gate_ctrl; } ;
struct TYPE_4__ {TYPE_1__ ops; struct dvb_usb_adapter* sec_priv; } ;


 int EINVAL ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct az6007_device_state* adap_to_priv (struct dvb_usb_adapter*) ;
 int az6007_ci_init (struct dvb_usb_adapter*) ;
 int cablestar_hdci_drxk ;
 int drxk_attach ;
 int drxk_gate_ctrl ;
 TYPE_2__* dvb_attach (int ,int *,int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static int az6007_cablestar_hdci_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct az6007_device_state *st = adap_to_priv(adap);
 struct dvb_usb_device *d = adap_to_d(adap);

 pr_debug("attaching demod drxk\n");

 adap->fe[0] = dvb_attach(drxk_attach, &cablestar_hdci_drxk,
     &d->i2c_adap);
 if (!adap->fe[0])
  return -EINVAL;

 adap->fe[0]->sec_priv = adap;
 st->gate_ctrl = adap->fe[0]->ops.i2c_gate_ctrl;
 adap->fe[0]->ops.i2c_gate_ctrl = drxk_gate_ctrl;

 az6007_ci_init(adap);

 return 0;
}
