
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_4__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_8__ {TYPE_3__* fe; } ;
struct TYPE_6__ {int i2c_gate_ctrl; } ;
struct TYPE_7__ {TYPE_2__ ops; } ;
struct TYPE_5__ {int i2c_adap; int udev; } ;


 int ENODEV ;
 int deb_info (char*) ;
 void* dvb_attach (int ,int *,int *,...) ;
 int err (char*) ;
 int tda10023_attach ;
 int tda10023_config ;
 int tda10048_attach ;
 int tda10048_config ;
 int tt3650_ci_init (struct dvb_usb_adapter*) ;
 int ttusb2_ct3650_i2c_gate_ctrl ;
 scalar_t__ usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int ttusb2_frontend_tda10023_attach(struct dvb_usb_adapter *adap)
{
 if (usb_set_interface(adap->dev->udev, 0, 3) < 0)
  err("set interface to alts=3 failed");

 if (adap->fe_adap[0].fe == ((void*)0)) {

  adap->fe_adap[0].fe = dvb_attach(tda10023_attach,
   &tda10023_config, &adap->dev->i2c_adap, 0x48);

  if (adap->fe_adap[0].fe == ((void*)0)) {
   deb_info("TDA10023 attach failed\n");
   return -ENODEV;
  }
  tt3650_ci_init(adap);
 } else {
  adap->fe_adap[1].fe = dvb_attach(tda10048_attach,
   &tda10048_config, &adap->dev->i2c_adap);

  if (adap->fe_adap[1].fe == ((void*)0)) {
   deb_info("TDA10048 attach failed\n");
   return -ENODEV;
  }


  adap->fe_adap[1].fe->ops.i2c_gate_ctrl = ttusb2_ct3650_i2c_gate_ctrl;

 }

 return 0;
}
