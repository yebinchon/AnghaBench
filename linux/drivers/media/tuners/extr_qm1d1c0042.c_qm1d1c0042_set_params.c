
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int xtal_freq; scalar_t__ lpf; int normal_srch_wait; int fast_srch_wait; int lpf_wait; } ;
struct qm1d1c0042_state {int* regs; TYPE_2__ cfg; } ;
struct TYPE_3__ {int frequency; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; struct qm1d1c0042_state* tuner_priv; } ;
typedef int s64 ;
typedef scalar_t__ s32 ;


 int** conv_table ;
 scalar_t__ div64_s64 (int,int) ;
 int msleep (int ) ;
 int reg_write (struct qm1d1c0042_state*,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int qm1d1c0042_set_params(struct dvb_frontend *fe)
{
 struct qm1d1c0042_state *state;
 u32 freq;
 int i, ret;
 u8 val, mask;
 u32 a, sd;
 s32 b;

 state = fe->tuner_priv;
 freq = fe->dtv_property_cache.frequency;

 state->regs[0x08] &= 0xf0;
 state->regs[0x08] |= 0x09;

 state->regs[0x13] &= 0x9f;
 state->regs[0x13] |= 0x20;


 val = state->regs[0x02] & 0x0f;
 for (i = 0; i < 8; i++)
  if (freq < conv_table[i][0] && freq >= conv_table[i + 1][0]) {
   val |= conv_table[i][1] << 7;
   val |= conv_table[i][2] << 4;
   break;
  }
 ret = reg_write(state, 0x02, val);
 if (ret < 0)
  return ret;

 a = (freq + state->cfg.xtal_freq / 2) / state->cfg.xtal_freq;

 state->regs[0x06] &= 0x40;
 state->regs[0x06] |= (a - 12) / 4;
 ret = reg_write(state, 0x06, state->regs[0x06]);
 if (ret < 0)
  return ret;

 state->regs[0x07] &= 0xf0;
 state->regs[0x07] |= (a - 4 * ((a - 12) / 4 + 1) - 5) & 0x0f;
 ret = reg_write(state, 0x07, state->regs[0x07]);
 if (ret < 0)
  return ret;


 val = state->regs[0x08];
 if (state->cfg.lpf) {

  val &= 0xf0;
  val |= 0x02;
 }
 ret = reg_write(state, 0x08, val);
 if (ret < 0)
  return ret;






 b = (s32)div64_s64(((s64) freq) << 20, state->cfg.xtal_freq)
      - (((s64) a) << 20);

 if (b >= 0)
  sd = b;
 else
  sd = (1 << 22) + b;

 state->regs[0x09] &= 0xc0;
 state->regs[0x09] |= (sd >> 16) & 0x3f;
 state->regs[0x0a] = (sd >> 8) & 0xff;
 state->regs[0x0b] = sd & 0xff;
 ret = reg_write(state, 0x09, state->regs[0x09]);
 if (ret == 0)
  ret = reg_write(state, 0x0a, state->regs[0x0a]);
 if (ret == 0)
  ret = reg_write(state, 0x0b, state->regs[0x0b]);
 if (ret != 0)
  return ret;

 if (!state->cfg.lpf) {

  ret = reg_write(state, 0x13, state->regs[0x13]);
  if (ret < 0)
   return ret;
 }


 mask = state->cfg.lpf ? 0x3f : 0x7f;
 val = state->regs[0x0c] & mask;
 ret = reg_write(state, 0x0c, val);
 if (ret < 0)
  return ret;
 usleep_range(2000, 3000);
 val = state->regs[0x0c] | ~mask;
 ret = reg_write(state, 0x0c, val);
 if (ret < 0)
  return ret;

 if (state->cfg.lpf)
  msleep(state->cfg.lpf_wait);
 else if (state->regs[0x03] & 0x01)
  msleep(state->cfg.fast_srch_wait);
 else
  msleep(state->cfg.normal_srch_wait);

 if (state->cfg.lpf) {

  ret = reg_write(state, 0x08, 0x09);
  if (ret < 0)
   return ret;


  ret = reg_write(state, 0x13, state->regs[0x13]);
  if (ret < 0)
   return ret;
 }
 return 0;
}
