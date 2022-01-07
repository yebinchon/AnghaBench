
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct TYPE_2__ {int gain; } ;
struct cinergyt2_fe_state {TYPE_1__ status; } ;


 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int cinergyt2_fe_read_signal_strength(struct dvb_frontend *fe,
      u16 *strength)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;

 *strength = (0xffff - le16_to_cpu(state->status.gain));
 return 0;
}
