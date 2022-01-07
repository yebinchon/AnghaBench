
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ts2020_priv {int frequency_khz; } ;
struct dvb_frontend {struct ts2020_priv* tuner_priv; } ;



__attribute__((used)) static int ts2020_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct ts2020_priv *priv = fe->tuner_priv;

 *frequency = priv->frequency_khz;
 return 0;
}
