
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_3__* dev; struct dib0700_adapter_state* priv; } ;
struct TYPE_6__ {scalar_t__ (* i2c_enumeration ) (int *,int,int,int *) ;int (* init ) (int *,int,int *) ;} ;
struct dib0700_adapter_state {TYPE_2__ dib7000p_ops; } ;
struct TYPE_7__ {int i2c_adap; int udev; } ;
struct TYPE_5__ {int fe; } ;


 int CMD_DIGITAL ;
 int EIO ;
 int ENODEV ;
 int cxusb_bluebird_gpio_pulse (TYPE_3__*,int,int) ;
 int cxusb_ctrl_msg (TYPE_3__*,int ,int *,int ,int *,int ) ;
 int cxusb_dualdig4_rev2_config ;
 int dib7000p_attach ;
 int dvb_attach (int ,TYPE_2__*) ;
 int err (char*) ;
 int pr_warn (char*) ;
 scalar_t__ stub1 (int *,int,int,int *) ;
 int stub2 (int *,int,int *) ;
 scalar_t__ usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int cxusb_dualdig4_rev2_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dib0700_adapter_state *state = adap->priv;

 if (usb_set_interface(adap->dev->udev, 0, 1) < 0)
  err("set interface failed");

 cxusb_ctrl_msg(adap->dev, CMD_DIGITAL, ((void*)0), 0, ((void*)0), 0);

 cxusb_bluebird_gpio_pulse(adap->dev, 0x02, 1);

 if (!dvb_attach(dib7000p_attach, &state->dib7000p_ops))
  return -ENODEV;

 if (state->dib7000p_ops.i2c_enumeration(&adap->dev->i2c_adap, 1, 18,
      &cxusb_dualdig4_rev2_config) < 0) {
  pr_warn("Unable to enumerate dib7000p\n");
  return -ENODEV;
 }

 adap->fe_adap[0].fe = state->dib7000p_ops.init(&adap->dev->i2c_adap,
             0x80,
             &cxusb_dualdig4_rev2_config);
 if (!adap->fe_adap[0].fe)
  return -EIO;

 return 0;
}
