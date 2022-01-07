
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {int dummy; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int hybrid_tuner_release_state (struct tda18271_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda18271_list_mutex ;

__attribute__((used)) static void tda18271_release(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;

 mutex_lock(&tda18271_list_mutex);

 if (priv)
  hybrid_tuner_release_state(priv);

 mutex_unlock(&tda18271_list_mutex);

 fe->tuner_priv = ((void*)0);
}
