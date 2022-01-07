
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u16 ;
struct TYPE_4__ {int work; } ;
struct ts2020_priv {TYPE_1__ stat_work; scalar_t__ dont_poll; } ;
struct TYPE_6__ {TYPE_2__* stat; } ;
struct dtv_frontend_properties {TYPE_3__ strength; } ;
struct dvb_frontend {struct ts2020_priv* tuner_priv; struct dtv_frontend_properties dtv_property_cache; } ;
typedef int __s64 ;
struct TYPE_5__ {scalar_t__ scale; int svalue; } ;


 scalar_t__ FE_SCALE_NOT_AVAILABLE ;
 int div64_s64 (int,int) ;
 int ts2020_stat_work (int *) ;

__attribute__((used)) static int ts2020_read_signal_strength(struct dvb_frontend *fe,
           u16 *_signal_strength)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct ts2020_priv *priv = fe->tuner_priv;
 unsigned strength;
 __s64 gain;

 if (priv->dont_poll)
  ts2020_stat_work(&priv->stat_work.work);

 if (c->strength.stat[0].scale == FE_SCALE_NOT_AVAILABLE) {
  *_signal_strength = 0;
  return 0;
 }

 gain = c->strength.stat[0].svalue;


 if (gain < -85000)

  strength = 0;
 else if (gain < -65000)

  strength = 0 + div64_s64((85000 + gain) * 3, 1000);
 else if (gain < -45000)

  strength = 60 + div64_s64((65000 + gain) * 3, 2000);
 else

  strength = 90 + div64_s64((45000 + gain), 5000);

 *_signal_strength = strength * 65535 / 100;
 return 0;
}
