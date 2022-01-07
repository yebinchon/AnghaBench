
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int dev; TYPE_1__* fe_adap; } ;
struct TYPE_2__ {int fe; } ;


 int dtt200u_fe_attach (int ) ;

__attribute__((used)) static int dtt200u_frontend_attach(struct dvb_usb_adapter *adap)
{
 adap->fe_adap[0].fe = dtt200u_fe_attach(adap->dev);
 return 0;
}
