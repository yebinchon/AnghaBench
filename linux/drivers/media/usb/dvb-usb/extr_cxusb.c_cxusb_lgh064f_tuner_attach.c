
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* dev; TYPE_1__* fe_adap; } ;
struct TYPE_4__ {int i2c_adap; } ;
struct TYPE_3__ {int fe; } ;


 int TUNER_LG_TDVS_H06XF ;
 int dvb_attach (int ,int ,int *,int,int ) ;
 int simple_tuner_attach ;

__attribute__((used)) static int cxusb_lgh064f_tuner_attach(struct dvb_usb_adapter *adap)
{
 dvb_attach(simple_tuner_attach, adap->fe_adap[0].fe,
     &adap->dev->i2c_adap, 0x61, TUNER_LG_TDVS_H06XF);
 return 0;
}
