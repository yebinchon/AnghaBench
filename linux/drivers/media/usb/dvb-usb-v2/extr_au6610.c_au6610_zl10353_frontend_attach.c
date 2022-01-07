
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int ** fe; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int ENODEV ;
 TYPE_1__* adap_to_d (struct dvb_usb_adapter*) ;
 int au6610_zl10353_config ;
 int * dvb_attach (int ,int *,int *) ;
 int zl10353_attach ;

__attribute__((used)) static int au6610_zl10353_frontend_attach(struct dvb_usb_adapter *adap)
{
 adap->fe[0] = dvb_attach(zl10353_attach, &au6610_zl10353_config,
   &adap_to_d(adap)->i2c_adap);
 if (adap->fe[0] == ((void*)0))
  return -ENODEV;

 return 0;
}
