
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int * adap; } ;
struct tuner_simple_priv {int radio_mode; TYPE_1__ i2c_props; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;


 int EINVAL ;
 int tuner_dbg (char*,int) ;
 int tuner_read_status (struct dvb_frontend*) ;
 int tuner_signal (int ) ;

__attribute__((used)) static int simple_get_rf_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 int signal;

 if (priv->i2c_props.adap == ((void*)0) || !priv->radio_mode)
  return -EINVAL;

 signal = tuner_signal(tuner_read_status(fe));

 *strength = signal;

 tuner_dbg("Signal strength: %d\n", signal);

 return 0;
}
