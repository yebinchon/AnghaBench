
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_7__ {int set_voltage; } ;
struct TYPE_9__ {TYPE_2__ ops; } ;
struct TYPE_8__ {TYPE_4__* fe; } ;
struct TYPE_6__ {int i2c_adap; } ;


 int EIO ;
 TYPE_4__* dvb_attach (int ,TYPE_4__*,int,...) ;
 int dw210x_set_voltage ;
 int info (char*) ;
 int mt312_attach ;
 int zl10039_attach ;
 int zl313_config ;

__attribute__((used)) static int zl100313_frontend_attach(struct dvb_usb_adapter *d)
{
 d->fe_adap[0].fe = dvb_attach(mt312_attach, &zl313_config,
   &d->dev->i2c_adap);
 if (d->fe_adap[0].fe != ((void*)0)) {
  if (dvb_attach(zl10039_attach, d->fe_adap[0].fe, 0x60,
    &d->dev->i2c_adap)) {
   d->fe_adap[0].fe->ops.set_voltage = dw210x_set_voltage;
   info("Attached zl100313+zl10039!");
   return 0;
  }
 }

 return -EIO;
}
