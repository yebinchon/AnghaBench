
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* dev; TYPE_1__* fe_adap; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_4__ {int i2c_adap; } ;
struct TYPE_3__ {int fe; } ;


 int EIO ;
 struct dvb_frontend* dvb_attach (int ,int ,int *,int *) ;
 int max2165_attach ;
 int mygica_d689_max2165_cfg ;

__attribute__((used)) static int cxusb_mygica_d689_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_frontend *fe;

 fe = dvb_attach(max2165_attach, adap->fe_adap[0].fe,
   &adap->dev->i2c_adap, &mygica_d689_max2165_cfg);
 return (!fe) ? -EIO : 0;
}
