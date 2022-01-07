
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tuner_simple_priv {int frequency; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;



__attribute__((used)) static int simple_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 *frequency = priv->frequency;
 return 0;
}
