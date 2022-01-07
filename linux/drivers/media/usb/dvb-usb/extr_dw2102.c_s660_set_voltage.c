
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dw2102_state {int (* old_set_voltage ) (struct dvb_frontend*,int) ;} ;
struct dvb_usb_adapter {TYPE_2__* dev; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_4__ {scalar_t__ priv; } ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int dw210x_set_voltage (struct dvb_frontend*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int s660_set_voltage(struct dvb_frontend *fe,
       enum fe_sec_voltage voltage)
{
 struct dvb_usb_adapter *d =
  (struct dvb_usb_adapter *)(fe->dvb->priv);
 struct dw2102_state *st = (struct dw2102_state *)d->dev->priv;

 dw210x_set_voltage(fe, voltage);
 if (st->old_set_voltage)
  st->old_set_voltage(fe, voltage);

 return 0;
}
