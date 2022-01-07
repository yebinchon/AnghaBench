
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct TYPE_2__ {int uncorrected_block_count; } ;
struct cinergyt2_fe_state {TYPE_1__ status; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static int cinergyt2_fe_read_unc_blocks(struct dvb_frontend *fe, u32 *unc)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;

 *unc = le32_to_cpu(state->status.uncorrected_block_count);
 return 0;
}
