
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_adapter {TYPE_3__* dev; TYPE_2__* fe_adap; } ;
struct TYPE_6__ {int set_voltage; } ;
struct TYPE_9__ {TYPE_1__ ops; } ;
struct TYPE_8__ {int udev; int i2c_adap; } ;
struct TYPE_7__ {TYPE_4__* fe; } ;


 int DW210X_WRITE_MSG ;
 int EIO ;
 TYPE_4__* dvb_attach (int ,TYPE_4__*,int,...) ;
 int dw210x_op_rw (int ,int,int ,int ,int*,int,int ) ;
 int dw210x_set_voltage ;
 int earda_config ;
 int info (char*) ;
 int stb6000_attach ;
 int stv0288_attach ;

__attribute__((used)) static int stv0288_frontend_attach(struct dvb_usb_adapter *d)
{
 u8 obuf[] = {7, 1};

 d->fe_adap[0].fe = dvb_attach(stv0288_attach, &earda_config,
   &d->dev->i2c_adap);

 if (d->fe_adap[0].fe == ((void*)0))
  return -EIO;

 if (((void*)0) == dvb_attach(stb6000_attach, d->fe_adap[0].fe, 0x61, &d->dev->i2c_adap))
  return -EIO;

 d->fe_adap[0].fe->ops.set_voltage = dw210x_set_voltage;

 dw210x_op_rw(d->dev->udev, 0x8a, 0, 0, obuf, 2, DW210X_WRITE_MSG);

 info("Attached stv0288+stb6000!");

 return 0;

}
