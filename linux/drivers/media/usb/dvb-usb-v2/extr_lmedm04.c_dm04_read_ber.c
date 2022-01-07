
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lme2510_state {int (* fe_read_ber ) (struct dvb_frontend*,scalar_t__*) ;int stream_on; } ;
struct dvb_frontend {int dummy; } ;


 struct lme2510_state* fe_to_priv (struct dvb_frontend*) ;
 int stub1 (struct dvb_frontend*,scalar_t__*) ;

__attribute__((used)) static int dm04_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct lme2510_state *st = fe_to_priv(fe);

 if (st->fe_read_ber && !st->stream_on)
  return st->fe_read_ber(fe, ber);

 *ber = 0;

 return 0;
}
