
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tc90522_state {int dummy; } ;
struct dvb_frontend {struct tc90522_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int reg_read (struct tc90522_state*,int,int*,int) ;

__attribute__((used)) static int tc90522s_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct tc90522_state *state;
 int ret;
 u8 reg;

 state = fe->demodulator_priv;
 ret = reg_read(state, 0xc3, &reg, 1);
 if (ret < 0)
  return ret;

 *status = 0;
 if (reg & 0x80)
  return 0;
 *status |= FE_HAS_SIGNAL;

 if (reg & 0x60)
  return 0;
 *status |= FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC;

 if (reg & 0x10)
  return 0;
 if (reg_read(state, 0xc5, &reg, 1) < 0 || !(reg & 0x03))
  return 0;
 *status |= FE_HAS_LOCK;
 return 0;
}
