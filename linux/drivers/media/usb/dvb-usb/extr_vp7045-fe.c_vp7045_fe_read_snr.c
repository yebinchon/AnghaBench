
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vp7045_fe_state {int d; } ;
struct dvb_frontend {struct vp7045_fe_state* demodulator_priv; } ;


 int vp7045_read_reg (int ,int) ;

__attribute__((used)) static int vp7045_fe_read_snr(struct dvb_frontend* fe, u16 *snr)
{
 struct vp7045_fe_state *state = fe->demodulator_priv;
 u8 _snr = vp7045_read_reg(state->d, 0x09);
 *snr = (_snr << 8) | _snr;
 return 0;
}
