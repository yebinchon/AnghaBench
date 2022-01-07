
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_device {struct dib0700_state* priv; } ;
struct dvb_usb_adapter {scalar_t__ id; struct dvb_usb_device* dev; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct dib0700_state {int (* read_status ) (struct dvb_frontend*,int*) ;} ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_2__ {struct dvb_usb_adapter* priv; } ;


 int FE_HAS_LOCK ;
 int GPIO0 ;
 int GPIO1 ;
 int GPIO_OUT ;
 int dib0700_set_gpio (struct dvb_usb_device*,int ,int ,int) ;
 int stub1 (struct dvb_frontend*,int*) ;

__attribute__((used)) static int novatd_read_status_override(struct dvb_frontend *fe,
           enum fe_status *stat)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;
 struct dvb_usb_device *dev = adap->dev;
 struct dib0700_state *state = dev->priv;
 int ret;

 ret = state->read_status(fe, stat);

 if (!ret)
  dib0700_set_gpio(dev, adap->id == 0 ? GPIO1 : GPIO0, GPIO_OUT,
    !!(*stat & FE_HAS_LOCK));

 return ret;
}
