
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct zl10353_state {int dummy; } ;
struct dvb_frontend {struct zl10353_state* demodulator_priv; } ;


 int SNR ;
 scalar_t__ debug_regs ;
 int zl10353_dump_regs (struct dvb_frontend*) ;
 int zl10353_read_register (struct zl10353_state*,int ) ;

__attribute__((used)) static int zl10353_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct zl10353_state *state = fe->demodulator_priv;
 u8 _snr;

 if (debug_regs)
  zl10353_dump_regs(fe);

 _snr = zl10353_read_register(state, SNR);
 *snr = 10 * _snr / 8;

 return 0;
}
