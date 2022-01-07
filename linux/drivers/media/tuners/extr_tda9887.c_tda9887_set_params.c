
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9887_priv {int standby; int std; int audmode; int mode; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;
struct analog_parameters {int std; int audmode; int mode; } ;


 int tda9887_configure (struct dvb_frontend*) ;

__attribute__((used)) static void tda9887_set_params(struct dvb_frontend *fe,
          struct analog_parameters *params)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;

 priv->standby = 0;
 priv->mode = params->mode;
 priv->audmode = params->audmode;
 priv->std = params->std;
 tda9887_configure(fe);
}
