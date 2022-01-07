
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_adapter {TYPE_2__* dev; TYPE_3__* fe_adap; } ;
struct TYPE_5__ {int set_voltage; } ;
struct TYPE_8__ {TYPE_1__ ops; } ;
struct TYPE_7__ {TYPE_4__* fe; } ;
struct TYPE_6__ {int udev; int i2c_adap; } ;


 int DW210X_WRITE_MSG ;
 int EIO ;
 TYPE_4__* dvb_attach (int ,int *,int *,int ) ;
 int dw210x_op_rw (int ,int,int ,int ,int*,int,int ) ;
 int dw210x_set_voltage ;
 int info (char*) ;
 int prof_7500_stv0900_config ;
 int stv0900_attach ;

__attribute__((used)) static int prof_7500_frontend_attach(struct dvb_usb_adapter *d)
{
 u8 obuf[] = {7, 1};

 d->fe_adap[0].fe = dvb_attach(stv0900_attach, &prof_7500_stv0900_config,
     &d->dev->i2c_adap, 0);
 if (d->fe_adap[0].fe == ((void*)0))
  return -EIO;

 d->fe_adap[0].fe->ops.set_voltage = dw210x_set_voltage;

 dw210x_op_rw(d->dev->udev, 0x8a, 0, 0, obuf, 2, DW210X_WRITE_MSG);

 info("Attached STV0900+STB6100A!");

 return 0;
}
