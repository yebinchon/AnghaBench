
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {int lock; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda18271_toggle_output (struct dvb_frontend*,int) ;

__attribute__((used)) static int tda18271_sleep(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 int ret;

 mutex_lock(&priv->lock);


 ret = tda18271_toggle_output(fe, 1);

 mutex_unlock(&priv->lock);

 return ret;
}
