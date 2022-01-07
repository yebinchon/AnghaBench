
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_7__ {int * i2c_gate_ctrl; } ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_6__ {TYPE_4__* fe; } ;
struct TYPE_5__ {int i2c_adap; } ;


 int EIO ;
 int dtv5100_zl10353_config ;
 TYPE_4__* dvb_attach (int ,int *,int *) ;
 int zl10353_attach ;

__attribute__((used)) static int dtv5100_frontend_attach(struct dvb_usb_adapter *adap)
{
 adap->fe_adap[0].fe = dvb_attach(zl10353_attach, &dtv5100_zl10353_config,
         &adap->dev->i2c_adap);
 if (adap->fe_adap[0].fe == ((void*)0))
  return -EIO;


 adap->fe_adap[0].fe->ops.i2c_gate_ctrl = ((void*)0);

 return 0;
}
