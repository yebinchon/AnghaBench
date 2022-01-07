
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct TYPE_2__ {int viterbi_error_rate; } ;
struct cinergyt2_fe_state {TYPE_1__ status; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static int cinergyt2_fe_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;

 *ber = le32_to_cpu(state->status.viterbi_error_rate);
 return 0;
}
