
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int d; } ;


 int af9005_write_ofdm_register (int ,int ,int) ;
 int af9005_write_register_bits (int ,int ,int ,int ,int) ;
 int fec_vtb_ber_rst_len ;
 int fec_vtb_ber_rst_pos ;
 int xd_p_fec_super_frm_unit_15_8 ;
 int xd_p_fec_super_frm_unit_7_0 ;
 int xd_p_fec_vtb_ber_rst ;

__attribute__((used)) static int af9005_reset_pre_viterbi(struct dvb_frontend *fe)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 int ret;


 ret =
     af9005_write_ofdm_register(state->d, xd_p_fec_super_frm_unit_7_0,
           1 & 0xff);
 if (ret)
  return ret;
 ret = af9005_write_ofdm_register(state->d, xd_p_fec_super_frm_unit_15_8,
      1 >> 8);
 if (ret)
  return ret;

 ret =
     af9005_write_register_bits(state->d, xd_p_fec_vtb_ber_rst,
           fec_vtb_ber_rst_pos, fec_vtb_ber_rst_len,
           1);

 return ret;
}
