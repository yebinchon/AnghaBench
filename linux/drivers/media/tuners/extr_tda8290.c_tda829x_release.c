
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tda8290_priv {int ver; } ;
struct TYPE_3__ {int (* release ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; TYPE_2__ ops; } ;


 int TDA18271 ;
 int TDA8275 ;
 int TDA8275A ;
 int kfree (struct tda8290_priv*) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static void tda829x_release(struct dvb_frontend *fe)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;



 if (priv->ver & (TDA18271 | TDA8275 | TDA8275A))
  if (fe->ops.tuner_ops.release)
   fe->ops.tuner_ops.release(fe);

 kfree(fe->analog_demod_priv);
 fe->analog_demod_priv = ((void*)0);
}
