
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tuner_simple_priv {int dummy; } ;
struct tuner_params {int count; TYPE_1__* ranges; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;
struct TYPE_2__ {unsigned int limit; int cb; int config; } ;


 int tuner_dbg (char*,unsigned int,unsigned int,...) ;

__attribute__((used)) static int simple_config_lookup(struct dvb_frontend *fe,
    struct tuner_params *t_params,
    unsigned *frequency, u8 *config, u8 *cb)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 int i;

 for (i = 0; i < t_params->count; i++) {
  if (*frequency > t_params->ranges[i].limit)
   continue;
  break;
 }
 if (i == t_params->count) {
  tuner_dbg("frequency out of range (%d > %d)\n",
     *frequency, t_params->ranges[i - 1].limit);
  *frequency = t_params->ranges[--i].limit;
 }
 *config = t_params->ranges[i].config;
 *cb = t_params->ranges[i].cb;

 tuner_dbg("freq = %d.%02d (%d), range = %d, config = 0x%02x, cb = 0x%02x\n",
    *frequency / 16, *frequency % 16 * 100 / 16, *frequency,
    i, *config, *cb);

 return i;
}
