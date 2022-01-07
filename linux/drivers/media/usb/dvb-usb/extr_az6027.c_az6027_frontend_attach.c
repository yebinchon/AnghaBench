
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_15__ {int demod_address; } ;
struct TYPE_14__ {int tuner_address; } ;
struct TYPE_11__ {int set_voltage; } ;
struct TYPE_13__ {TYPE_2__ ops; } ;
struct TYPE_12__ {TYPE_4__* fe; } ;
struct TYPE_10__ {int i2c_adap; } ;


 int az6027_ci_init (struct dvb_usb_adapter*) ;
 int az6027_frontend_poweron (struct dvb_usb_adapter*) ;
 int az6027_frontend_reset (struct dvb_usb_adapter*) ;
 int az6027_frontend_tsbypass (struct dvb_usb_adapter*,int ) ;
 int az6027_set_voltage ;
 TYPE_7__ az6027_stb0899_config ;
 TYPE_5__ az6027_stb6100_config ;
 int deb_info (char*,struct dvb_usb_adapter*,...) ;
 TYPE_4__* stb0899_attach (TYPE_7__*,int *) ;
 scalar_t__ stb6100_attach (TYPE_4__*,TYPE_5__*,int *) ;
 int warn (char*) ;

__attribute__((used)) static int az6027_frontend_attach(struct dvb_usb_adapter *adap)
{

 az6027_frontend_poweron(adap);
 az6027_frontend_reset(adap);

 deb_info("adap = %p, dev = %p\n", adap, adap->dev);
 adap->fe_adap[0].fe = stb0899_attach(&az6027_stb0899_config, &adap->dev->i2c_adap);

 if (adap->fe_adap[0].fe) {
  deb_info("found STB0899 DVB-S/DVB-S2 frontend @0x%02x", az6027_stb0899_config.demod_address);
  if (stb6100_attach(adap->fe_adap[0].fe, &az6027_stb6100_config, &adap->dev->i2c_adap)) {
   deb_info("found STB6100 DVB-S/DVB-S2 frontend @0x%02x", az6027_stb6100_config.tuner_address);
   adap->fe_adap[0].fe->ops.set_voltage = az6027_set_voltage;
   az6027_ci_init(adap);
  } else {
   adap->fe_adap[0].fe = ((void*)0);
  }
 } else
  warn("no front-end attached\n");

 az6027_frontend_tsbypass(adap, 0);

 return 0;
}
