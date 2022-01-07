
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int half_step; int lpf_freq; } ;
struct qm1d1b0004_state {int i2c; TYPE_2__ cfg; } ;
struct TYPE_3__ {int frequency; int symbol_rate; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; struct qm1d1b0004_state* tuner_priv; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int DIV_ROUND_UP (int,int) ;
 int QM1D1B0004_CFG_LPF_DFLT ;
 int QM1D1B0004_LPF_FALLBACK ;
 int QM1D1B0004_PSC_MASK ;
 int QM1D1B0004_XTL_FREQ ;
 int i2c_master_recv (int ,int*,int) ;
 int i2c_master_send (int ,int*,int) ;
 int lookup_cb (int) ;
 int msleep (int) ;

__attribute__((used)) static int qm1d1b0004_set_params(struct dvb_frontend *fe)
{
 struct qm1d1b0004_state *state;
 u32 frequency, pll, lpf_freq;
 u16 word;
 u8 buf[4], cb, lpf;
 int ret;

 state = fe->tuner_priv;
 frequency = fe->dtv_property_cache.frequency;

 pll = QM1D1B0004_XTL_FREQ / 4;
 if (state->cfg.half_step)
  pll /= 2;
 word = DIV_ROUND_CLOSEST(frequency, pll);
 cb = lookup_cb(frequency);
 if (cb & QM1D1B0004_PSC_MASK)
  word = (word << 1 & ~0x1f) | (word & 0x0f);


 buf[0] = 0x40 | word >> 8;
 buf[1] = word;

 buf[2] = 0xe0 | state->cfg.half_step;
 buf[3] = cb;
 ret = i2c_master_send(state->i2c, buf, 4);
 if (ret < 0)
  return ret;


 buf[0] = 0xe4 | state->cfg.half_step;
 ret = i2c_master_send(state->i2c, buf, 1);
 if (ret < 0)
  return ret;
 msleep(20);


 lpf_freq = state->cfg.lpf_freq;
 if (lpf_freq == QM1D1B0004_CFG_LPF_DFLT)
  lpf_freq = fe->dtv_property_cache.symbol_rate / 1000;
 if (lpf_freq == 0)
  lpf_freq = QM1D1B0004_LPF_FALLBACK;
 lpf = DIV_ROUND_UP(lpf_freq, 2000) - 2;
 buf[0] = 0xe4 | ((lpf & 0x0c) << 1) | state->cfg.half_step;
 buf[1] = cb | ((lpf & 0x03) << 2);
 ret = i2c_master_send(state->i2c, buf, 2);
 if (ret < 0)
  return ret;


 buf[0] = 0;
 ret = i2c_master_recv(state->i2c, buf, 1);
 if (ret < 0)
  return ret;
 return 0;
}
