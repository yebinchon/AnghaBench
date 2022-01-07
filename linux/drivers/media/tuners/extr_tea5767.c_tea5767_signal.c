
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5767_priv {int dummy; } ;
struct dvb_frontend {struct tea5767_priv* tuner_priv; } ;


 char const TEA5767_ADC_LEVEL_MASK ;
 int tuner_dbg (char*,int) ;

__attribute__((used)) static inline int tea5767_signal(struct dvb_frontend *fe, const char *buffer)
{
 struct tea5767_priv *priv = fe->tuner_priv;

 int signal = ((buffer[3] & TEA5767_ADC_LEVEL_MASK) << 8);

 tuner_dbg("Signal strength: %d\n", signal);

 return signal;
}
