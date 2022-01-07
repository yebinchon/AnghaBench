
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
 int d680_dmb_tuner ;
 struct dvb_frontend* dvb_attach (int ,int ,int *,int *) ;
 int mxl5005s_attach ;

__attribute__((used)) static int cxusb_d680_dmb_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_frontend *fe;

 fe = dvb_attach(mxl5005s_attach, adap->fe_adap[0].fe,
   &adap->dev->i2c_adap, &d680_dmb_tuner);
 return (!fe) ? -EIO : 0;
}
