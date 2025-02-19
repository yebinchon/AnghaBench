
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_4__ {int * fe; } ;
struct TYPE_3__ {int i2c_adap; } ;


 int EIO ;
 int * dvb_attach (int ,int *,int *,int) ;
 int dw3101_tda10023_config ;
 int info (char*) ;
 int tda10023_attach ;

__attribute__((used)) static int dw3101_frontend_attach(struct dvb_usb_adapter *d)
{
 d->fe_adap[0].fe = dvb_attach(tda10023_attach, &dw3101_tda10023_config,
    &d->dev->i2c_adap, 0x48);
 if (d->fe_adap[0].fe != ((void*)0)) {
  info("Attached tda10023!");
  return 0;
 }
 return -EIO;
}
