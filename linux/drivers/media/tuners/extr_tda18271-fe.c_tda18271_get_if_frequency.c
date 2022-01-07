
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda18271_priv {scalar_t__ if_freq; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;



__attribute__((used)) static int tda18271_get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 *frequency = (u32)priv->if_freq * 1000;
 return 0;
}
