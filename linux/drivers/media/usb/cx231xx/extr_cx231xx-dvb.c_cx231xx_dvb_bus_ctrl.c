
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx231xx {int dummy; } ;
struct TYPE_2__ {struct cx231xx* priv; } ;


 int CX231XX_DIGITAL_MODE ;
 int CX231XX_SUSPEND ;
 int cx231xx_set_mode (struct cx231xx*,int ) ;

__attribute__((used)) static int cx231xx_dvb_bus_ctrl(struct dvb_frontend *fe, int acquire)
{
 struct cx231xx *dev = fe->dvb->priv;

 if (acquire)
  return cx231xx_set_mode(dev, CX231XX_DIGITAL_MODE);
 else
  return cx231xx_set_mode(dev, CX231XX_SUSPEND);
}
