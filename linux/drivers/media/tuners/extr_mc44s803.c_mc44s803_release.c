
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc44s803_priv {int dummy; } ;
struct dvb_frontend {struct mc44s803_priv* tuner_priv; } ;


 int kfree (struct mc44s803_priv*) ;

__attribute__((used)) static void mc44s803_release(struct dvb_frontend *fe)
{
 struct mc44s803_priv *priv = fe->tuner_priv;

 fe->tuner_priv = ((void*)0);
 kfree(priv);
}
