
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_7__ {void* set_voltage; } ;
struct TYPE_10__ {TYPE_2__ ops; } ;
struct TYPE_9__ {int * i2c_algo; } ;
struct TYPE_8__ {TYPE_5__* fe; } ;
struct TYPE_6__ {int i2c_adap; } ;


 int EIO ;
 void* dvb_attach (int ,TYPE_5__*,int,...) ;
 int dw2102_earda_i2c_algo ;
 int dw2102_i2c_algo ;
 TYPE_4__ dw2102_properties ;
 int dw2102_serit_i2c_algo ;
 void* dw210x_set_voltage ;
 int earda_config ;
 int info (char*) ;
 int serit_sp1511lhb_config ;
 int sharp_z0194a_config ;
 int si21xx_attach ;
 int stb6000_attach ;
 int stv0288_attach ;
 int stv0299_attach ;

__attribute__((used)) static int dw2102_frontend_attach(struct dvb_usb_adapter *d)
{
 if (dw2102_properties.i2c_algo == &dw2102_serit_i2c_algo) {

  d->fe_adap[0].fe = dvb_attach(si21xx_attach, &serit_sp1511lhb_config,
     &d->dev->i2c_adap);
  if (d->fe_adap[0].fe != ((void*)0)) {
   d->fe_adap[0].fe->ops.set_voltage = dw210x_set_voltage;
   info("Attached si21xx!");
   return 0;
  }
 }

 if (dw2102_properties.i2c_algo == &dw2102_earda_i2c_algo) {
  d->fe_adap[0].fe = dvb_attach(stv0288_attach, &earda_config,
     &d->dev->i2c_adap);
  if (d->fe_adap[0].fe != ((void*)0)) {
   if (dvb_attach(stb6000_attach, d->fe_adap[0].fe, 0x61,
     &d->dev->i2c_adap)) {
    d->fe_adap[0].fe->ops.set_voltage = dw210x_set_voltage;
    info("Attached stv0288!");
    return 0;
   }
  }
 }

 if (dw2102_properties.i2c_algo == &dw2102_i2c_algo) {

  d->fe_adap[0].fe = dvb_attach(stv0299_attach, &sharp_z0194a_config,
     &d->dev->i2c_adap);
  if (d->fe_adap[0].fe != ((void*)0)) {
   d->fe_adap[0].fe->ops.set_voltage = dw210x_set_voltage;
   info("Attached stv0299!");
   return 0;
  }
 }
 return -EIO;
}
