
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dtv_frontend_properties {int modulation; } ;
struct dvb_frontend {TYPE_1__* dvb; struct dtv_frontend_properties dtv_property_cache; } ;
struct cx23885_tsport {int (* set_frontend ) (struct dvb_frontend*) ;struct cx23885_dev* dev; } ;
struct cx23885_dev {int board; } ;
struct TYPE_2__ {struct cx23885_tsport* priv; } ;






 int GPIO_0 ;
 int GPIO_5 ;



 int cx23885_gpio_clear (struct cx23885_dev*,int ) ;
 int cx23885_gpio_set (struct cx23885_dev*,int ) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int cx23885_dvb_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct cx23885_tsport *port = fe->dvb->priv;
 struct cx23885_dev *dev = port->dev;

 switch (dev->board) {
 case 134:
  switch (p->modulation) {
  case 128:
   cx23885_gpio_clear(dev, GPIO_5);
   break;
  case 129:
  case 130:
  default:
   cx23885_gpio_set(dev, GPIO_5);
   break;
  }
  break;
 case 132:
 case 131:
 case 133:

  cx23885_gpio_set(dev, GPIO_0);
  break;
 }


 if (port->set_frontend)
  return port->set_frontend(fe);

 return 0;
}
