
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {scalar_t__ id; int lock; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 scalar_t__ TDA18271HDC2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda18271_ir_cal_init (struct dvb_frontend*) ;
 int tda18271_set_standby_mode (struct dvb_frontend*,int ,int ,int ) ;
 int tda18271c2_rf_cal_init (struct dvb_frontend*) ;
 scalar_t__ tda_fail (int) ;

__attribute__((used)) static int tda18271_init(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 int ret;

 mutex_lock(&priv->lock);


 ret = tda18271_set_standby_mode(fe, 0, 0, 0);
 if (tda_fail(ret))
  goto fail;


 ret = tda18271_ir_cal_init(fe);
 if (tda_fail(ret))
  goto fail;

 if (priv->id == TDA18271HDC2)
  tda18271c2_rf_cal_init(fe);
fail:
 mutex_unlock(&priv->lock);

 return ret;
}
