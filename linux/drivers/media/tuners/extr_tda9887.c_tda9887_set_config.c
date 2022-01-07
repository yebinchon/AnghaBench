
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9887_priv {unsigned int config; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;


 int tda9887_configure (struct dvb_frontend*) ;

__attribute__((used)) static int tda9887_set_config(struct dvb_frontend *fe, void *priv_cfg)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;

 priv->config = *(unsigned int *)priv_cfg;
 tda9887_configure(fe);

 return 0;
}
