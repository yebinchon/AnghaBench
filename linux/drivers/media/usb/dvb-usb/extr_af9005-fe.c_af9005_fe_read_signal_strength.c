
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int * release; } ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int d; } ;


 int ENODEV ;
 int af9005_read_ofdm_register (int ,int ,int*) ;
 int xd_r_reg_aagc_if_gain ;
 int xd_r_reg_aagc_rf_gain ;

__attribute__((used)) static int af9005_fe_read_signal_strength(struct dvb_frontend *fe,
       u16 * strength)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 int ret;
 u8 if_gain, rf_gain;

 if (fe->ops.tuner_ops.release == ((void*)0))
  return -ENODEV;
 ret =
     af9005_read_ofdm_register(state->d, xd_r_reg_aagc_rf_gain,
          &rf_gain);
 if (ret)
  return ret;
 ret =
     af9005_read_ofdm_register(state->d, xd_r_reg_aagc_if_gain,
          &if_gain);
 if (ret)
  return ret;


 *strength = (512 - rf_gain - if_gain) << 7;
 return 0;
}
