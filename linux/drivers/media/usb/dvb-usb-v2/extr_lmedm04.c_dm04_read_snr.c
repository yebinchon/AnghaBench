
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct lme2510_state {int (* fe_read_snr ) (struct dvb_frontend*,scalar_t__*) ;int stream_on; } ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ cnr; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_3__ {scalar_t__ scale; scalar_t__ uvalue; } ;


 scalar_t__ FE_SCALE_RELATIVE ;
 struct lme2510_state* fe_to_priv (struct dvb_frontend*) ;
 int stub1 (struct dvb_frontend*,scalar_t__*) ;

__attribute__((used)) static int dm04_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct lme2510_state *st = fe_to_priv(fe);

 if (st->fe_read_snr && !st->stream_on)
  return st->fe_read_snr(fe, snr);

 if (c->cnr.stat[0].scale == FE_SCALE_RELATIVE)
  *snr = (u16)c->cnr.stat[0].uvalue;
 else
  *snr = 0;

 return 0;
}
