
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* dev; TYPE_1__* fe_adap; } ;
struct TYPE_6__ {int callback; } ;
struct TYPE_5__ {int i2c_adap; } ;
struct TYPE_4__ {TYPE_3__* fe; } ;


 int ENODEV ;
 int dib0700_xc5000_tuner_callback ;
 int * dvb_attach (int ,TYPE_3__*,int *,int *) ;
 int s5h1411_xc5000_tunerconfig ;
 int xc5000_attach ;

__attribute__((used)) static int xc5000_tuner_attach(struct dvb_usb_adapter *adap)
{

 adap->fe_adap[0].fe->callback = dib0700_xc5000_tuner_callback;

 return dvb_attach(xc5000_attach, adap->fe_adap[0].fe, &adap->dev->i2c_adap,
     &s5h1411_xc5000_tunerconfig)
  == ((void*)0) ? -ENODEV : 0;
}
