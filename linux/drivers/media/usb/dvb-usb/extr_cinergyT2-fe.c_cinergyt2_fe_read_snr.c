
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct TYPE_2__ {int snr; } ;
struct cinergyt2_fe_state {TYPE_1__ status; } ;



__attribute__((used)) static int cinergyt2_fe_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;

 *snr = (state->status.snr << 8) | state->status.snr;
 return 0;
}
