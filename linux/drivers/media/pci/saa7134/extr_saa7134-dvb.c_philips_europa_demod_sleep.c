
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7134_dev {int (* original_demod_sleep ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; } ;
struct TYPE_3__ {struct saa7134_dev* priv; } ;


 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int philips_europa_demod_sleep(struct dvb_frontend *fe)
{
 struct saa7134_dev *dev = fe->dvb->priv;

 if (dev->original_demod_sleep)
  dev->original_demod_sleep(fe);
 fe->ops.i2c_gate_ctrl(fe, 1);
 return 0;
}
