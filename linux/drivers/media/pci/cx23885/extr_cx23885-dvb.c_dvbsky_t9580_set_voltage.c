
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx23885_tsport {int (* fe_set_voltage ) (struct dvb_frontend*,int) ;struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {struct cx23885_tsport* priv; } ;


 int GPIO_0 ;
 int GPIO_1 ;



 int cx23885_gpio_clear (struct cx23885_dev*,int) ;
 int cx23885_gpio_enable (struct cx23885_dev*,int,int) ;
 int cx23885_gpio_set (struct cx23885_dev*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int dvbsky_t9580_set_voltage(struct dvb_frontend *fe,
     enum fe_sec_voltage voltage)
{
 struct cx23885_tsport *port = fe->dvb->priv;
 struct cx23885_dev *dev = port->dev;

 cx23885_gpio_enable(dev, GPIO_0 | GPIO_1, 1);

 switch (voltage) {
 case 130:
  cx23885_gpio_set(dev, GPIO_1);
  cx23885_gpio_clear(dev, GPIO_0);
  break;
 case 129:
  cx23885_gpio_set(dev, GPIO_1);
  cx23885_gpio_set(dev, GPIO_0);
  break;
 case 128:
  cx23885_gpio_clear(dev, GPIO_1);
  cx23885_gpio_clear(dev, GPIO_0);
  break;
 }


 port->fe_set_voltage(fe, voltage);

 return 0;
}
