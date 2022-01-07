
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ no_tuner; } ;
struct zl10353_state {int bandwidth; TYPE_1__ config; int frequency; } ;
struct TYPE_5__ {int (* calc_regs ) (struct dvb_frontend*,int*,int) ;int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_6__ {TYPE_2__ tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;} ;
struct dtv_frontend_properties {int transmission_mode; int guard_interval; int bandwidth_hz; int code_rate_HP; int code_rate_LP; int hierarchy; int modulation; int frequency; } ;
struct dvb_frontend {TYPE_3__ ops; struct zl10353_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
typedef int pllbuf ;


 int ACQ_CTL ;
 int AGC_TARGET ;
 int EINVAL ;







 int FSM_GO ;
 int INPUT_FREQ_0 ;
 int INPUT_FREQ_1 ;
 int MCLK_RATIO ;




 int RESET ;
 int TPS_GIVEN_0 ;
 int TPS_GIVEN_1 ;



 int TRL_NOMINAL_RATE_0 ;
 int TRL_NOMINAL_RATE_1 ;
 int TUNER_GO ;
 int lsb (int) ;
 int msb (int) ;
 int stub1 (struct dvb_frontend*,int ) ;
 int stub2 (struct dvb_frontend*) ;
 int stub3 (struct dvb_frontend*,int ) ;
 int stub4 (struct dvb_frontend*,int*,int) ;
 int udelay (int) ;
 int zl10353_calc_input_freq (struct dvb_frontend*,int*) ;
 int zl10353_calc_nominal_rate (struct dvb_frontend*,int,int*) ;
 int zl10353_single_write (struct dvb_frontend*,int,int) ;
 int zl10353_write (struct dvb_frontend*,int*,int) ;

__attribute__((used)) static int zl10353_set_parameters(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct zl10353_state *state = fe->demodulator_priv;
 u16 nominal_rate, input_freq;
 u8 pllbuf[6] = { 0x67 }, acq_ctl = 0;
 u16 tps = 0;

 state->frequency = c->frequency;

 zl10353_single_write(fe, RESET, 0x80);
 udelay(200);
 zl10353_single_write(fe, 0xEA, 0x01);
 udelay(200);
 zl10353_single_write(fe, 0xEA, 0x00);

 zl10353_single_write(fe, AGC_TARGET, 0x28);

 if (c->transmission_mode != 128)
  acq_ctl |= (1 << 0);
 if (c->guard_interval != 140)
  acq_ctl |= (1 << 1);
 zl10353_single_write(fe, ACQ_CTL, acq_ctl);

 switch (c->bandwidth_hz) {
 case 6000000:

  zl10353_single_write(fe, MCLK_RATIO, 0x97);
  zl10353_single_write(fe, 0x64, 0x34);
  zl10353_single_write(fe, 0xcc, 0xdd);
  break;
 case 7000000:
  zl10353_single_write(fe, MCLK_RATIO, 0x86);
  zl10353_single_write(fe, 0x64, 0x35);
  zl10353_single_write(fe, 0xcc, 0x73);
  break;
 default:
  c->bandwidth_hz = 8000000;

 case 8000000:
  zl10353_single_write(fe, MCLK_RATIO, 0x75);
  zl10353_single_write(fe, 0x64, 0x36);
  zl10353_single_write(fe, 0xcc, 0x73);
 }

 zl10353_calc_nominal_rate(fe, c->bandwidth_hz, &nominal_rate);
 zl10353_single_write(fe, TRL_NOMINAL_RATE_1, msb(nominal_rate));
 zl10353_single_write(fe, TRL_NOMINAL_RATE_0, lsb(nominal_rate));
 state->bandwidth = c->bandwidth_hz;

 zl10353_calc_input_freq(fe, &input_freq);
 zl10353_single_write(fe, INPUT_FREQ_1, msb(input_freq));
 zl10353_single_write(fe, INPUT_FREQ_0, lsb(input_freq));


 switch (c->code_rate_HP) {
 case 150:
  tps |= (1 << 7);
  break;
 case 149:
  tps |= (2 << 7);
  break;
 case 148:
  tps |= (3 << 7);
  break;
 case 147:
  tps |= (4 << 7);
  break;
 case 151:
 case 146:
  break;
 default:
  return -EINVAL;
 }

 switch (c->code_rate_LP) {
 case 150:
  tps |= (1 << 4);
  break;
 case 149:
  tps |= (2 << 4);
  break;
 case 148:
  tps |= (3 << 4);
  break;
 case 147:
  tps |= (4 << 4);
  break;
 case 151:
 case 146:
  break;
 case 145:
  if (c->hierarchy == 136 ||
      c->hierarchy == 135)
   break;

 default:
  return -EINVAL;
 }

 switch (c->modulation) {
 case 131:
  break;
 case 132:
 case 134:
  tps |= (1 << 13);
  break;
 case 133:
  tps |= (2 << 13);
  break;
 default:
  return -EINVAL;
 }

 switch (c->transmission_mode) {
 case 130:
 case 128:
  break;
 case 129:
  tps |= (1 << 0);
  break;
 default:
  return -EINVAL;
 }

 switch (c->guard_interval) {
 case 143:
 case 140:
  break;
 case 144:
  tps |= (1 << 2);
  break;
 case 141:
  tps |= (2 << 2);
  break;
 case 142:
  tps |= (3 << 2);
  break;
 default:
  return -EINVAL;
 }

 switch (c->hierarchy) {
 case 136:
 case 135:
  break;
 case 139:
  tps |= (1 << 10);
  break;
 case 138:
  tps |= (2 << 10);
  break;
 case 137:
  tps |= (3 << 10);
  break;
 default:
  return -EINVAL;
 }

 zl10353_single_write(fe, TPS_GIVEN_1, msb(tps));
 zl10353_single_write(fe, TPS_GIVEN_0, lsb(tps));

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);






 if (state->config.no_tuner) {
  if (fe->ops.tuner_ops.set_params) {
   fe->ops.tuner_ops.set_params(fe);
   if (fe->ops.i2c_gate_ctrl)
    fe->ops.i2c_gate_ctrl(fe, 0);
  }
 } else if (fe->ops.tuner_ops.calc_regs) {
  fe->ops.tuner_ops.calc_regs(fe, pllbuf + 1, 5);
  pllbuf[1] <<= 1;
  zl10353_write(fe, pllbuf, sizeof(pllbuf));
 }

 zl10353_single_write(fe, 0x5F, 0x13);


 if (state->config.no_tuner || fe->ops.tuner_ops.calc_regs == ((void*)0))
  zl10353_single_write(fe, FSM_GO, 0x01);
 else
  zl10353_single_write(fe, TUNER_GO, 0x01);

 return 0;
}
