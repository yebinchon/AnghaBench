
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {int dev; TYPE_2__* fe_adap; } ;
struct dvb_frontend {size_t id; TYPE_1__* dvb; } ;
struct TYPE_4__ {int (* fe_sleep ) (struct dvb_frontend*) ;} ;
struct TYPE_3__ {struct dvb_usb_adapter* priv; } ;


 int dvb_usb_device_power_ctrl (int ,int ) ;
 int dvb_usb_set_active_fe (struct dvb_frontend*,int ) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int dvb_usb_fe_sleep(struct dvb_frontend *fe)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;

 if (adap->fe_adap[fe->id].fe_sleep)
  adap->fe_adap[fe->id].fe_sleep(fe);

 dvb_usb_set_active_fe(fe, 0);

 return dvb_usb_device_power_ctrl(adap->dev, 0);
}
