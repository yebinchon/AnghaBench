
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vp7045_fe_state {int d; } ;
struct dvb_frontend {struct vp7045_fe_state* demodulator_priv; } ;


 int vp7045_read_reg (int ,int) ;

__attribute__((used)) static int vp7045_fe_read_unc_blocks(struct dvb_frontend* fe, u32 *unc)
{
 struct vp7045_fe_state *state = fe->demodulator_priv;
 *unc = (vp7045_read_reg(state->d, 0x10) << 8) |
      vp7045_read_reg(state->d, 0x11);
 return 0;
}
