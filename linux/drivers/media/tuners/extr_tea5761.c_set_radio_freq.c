
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5761_priv {int standby; } ;
struct dvb_frontend {struct tea5761_priv* analog_demod_priv; } ;
struct analog_parameters {scalar_t__ audmode; int frequency; } ;


 scalar_t__ V4L2_TUNER_MODE_MONO ;
 int __set_radio_freq (struct dvb_frontend*,int ,int) ;

__attribute__((used)) static int set_radio_freq(struct dvb_frontend *fe,
     struct analog_parameters *params)
{
 struct tea5761_priv *priv = fe->analog_demod_priv;

 priv->standby = 0;

 return __set_radio_freq(fe, params->frequency,
    params->audmode == V4L2_TUNER_MODE_MONO);
}
