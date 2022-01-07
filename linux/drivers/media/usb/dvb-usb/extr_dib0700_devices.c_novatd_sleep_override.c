
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_device {struct dib0700_state* priv; } ;
struct dvb_usb_adapter {scalar_t__ id; struct dvb_usb_device* dev; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct dib0700_state {int (* sleep ) (struct dvb_frontend*) ;} ;
struct TYPE_2__ {struct dvb_usb_adapter* priv; } ;


 int GPIO0 ;
 int GPIO1 ;
 int GPIO_OUT ;
 int dib0700_set_gpio (struct dvb_usb_device*,int ,int ,int ) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int novatd_sleep_override(struct dvb_frontend* fe)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;
 struct dvb_usb_device *dev = adap->dev;
 struct dib0700_state *state = dev->priv;


 dib0700_set_gpio(dev, adap->id == 0 ? GPIO1 : GPIO0, GPIO_OUT, 0);

 return state->sleep(fe);
}
