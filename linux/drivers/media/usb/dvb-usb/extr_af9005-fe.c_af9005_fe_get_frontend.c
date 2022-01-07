
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct dtv_frontend_properties {int bandwidth_hz; int transmission_mode; int guard_interval; void* code_rate_LP; void* code_rate_HP; int hierarchy; int modulation; } ;
struct af9005_fe_state {int d; } ;


 void* FEC_1_2 ;
 void* FEC_2_3 ;
 void* FEC_3_4 ;
 void* FEC_5_6 ;
 void* FEC_7_8 ;
 int GUARD_INTERVAL_1_16 ;
 int GUARD_INTERVAL_1_32 ;
 int GUARD_INTERVAL_1_4 ;
 int GUARD_INTERVAL_1_8 ;
 int HIERARCHY_1 ;
 int HIERARCHY_2 ;
 int HIERARCHY_4 ;
 int HIERARCHY_NONE ;
 int QAM_16 ;
 int QAM_64 ;
 int QPSK ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;
 int af9005_read_register_bits (int ,int ,int ,int ,int*) ;
 int deb_info (char*,...) ;
 int reg_bw_len ;
 int reg_bw_pos ;
 int reg_dec_pri_len ;
 int reg_dec_pri_pos ;
 int reg_tpsd_const_len ;
 int reg_tpsd_const_pos ;
 int reg_tpsd_gi_len ;
 int reg_tpsd_gi_pos ;
 int reg_tpsd_hier_len ;
 int reg_tpsd_hier_pos ;
 int reg_tpsd_hpcr_len ;
 int reg_tpsd_hpcr_pos ;
 int reg_tpsd_lpcr_len ;
 int reg_tpsd_lpcr_pos ;
 int reg_tpsd_txmod_len ;
 int reg_tpsd_txmod_pos ;
 int xd_g_reg_bw ;
 int xd_g_reg_dec_pri ;
 int xd_g_reg_tpsd_const ;
 int xd_g_reg_tpsd_gi ;
 int xd_g_reg_tpsd_hier ;
 int xd_g_reg_tpsd_hpcr ;
 int xd_g_reg_tpsd_lpcr ;
 int xd_g_reg_tpsd_txmod ;

__attribute__((used)) static int af9005_fe_get_frontend(struct dvb_frontend *fe,
      struct dtv_frontend_properties *fep)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 int ret;
 u8 temp;


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_tpsd_const,
          reg_tpsd_const_pos, reg_tpsd_const_len,
          &temp);
 if (ret)
  return ret;
 deb_info("===== fe_get_frontend_legacy = =============\n");
 deb_info("CONSTELLATION ");
 switch (temp) {
 case 0:
  fep->modulation = QPSK;
  deb_info("QPSK\n");
  break;
 case 1:
  fep->modulation = QAM_16;
  deb_info("QAM_16\n");
  break;
 case 2:
  fep->modulation = QAM_64;
  deb_info("QAM_64\n");
  break;
 }


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_tpsd_hier,
          reg_tpsd_hier_pos, reg_tpsd_hier_len,
          &temp);
 if (ret)
  return ret;
 deb_info("HIERARCHY ");
 switch (temp) {
 case 0:
  fep->hierarchy = HIERARCHY_NONE;
  deb_info("NONE\n");
  break;
 case 1:
  fep->hierarchy = HIERARCHY_1;
  deb_info("1\n");
  break;
 case 2:
  fep->hierarchy = HIERARCHY_2;
  deb_info("2\n");
  break;
 case 3:
  fep->hierarchy = HIERARCHY_4;
  deb_info("4\n");
  break;
 }


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_dec_pri,
          reg_dec_pri_pos, reg_dec_pri_len, &temp);
 if (ret)
  return ret;

 deb_info("PRIORITY %s\n", temp ? "high" : "low");


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_tpsd_hpcr,
          reg_tpsd_hpcr_pos, reg_tpsd_hpcr_len,
          &temp);
 if (ret)
  return ret;
 deb_info("CODERATE HP ");
 switch (temp) {
 case 0:
  fep->code_rate_HP = FEC_1_2;
  deb_info("FEC_1_2\n");
  break;
 case 1:
  fep->code_rate_HP = FEC_2_3;
  deb_info("FEC_2_3\n");
  break;
 case 2:
  fep->code_rate_HP = FEC_3_4;
  deb_info("FEC_3_4\n");
  break;
 case 3:
  fep->code_rate_HP = FEC_5_6;
  deb_info("FEC_5_6\n");
  break;
 case 4:
  fep->code_rate_HP = FEC_7_8;
  deb_info("FEC_7_8\n");
  break;
 }


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_tpsd_lpcr,
          reg_tpsd_lpcr_pos, reg_tpsd_lpcr_len,
          &temp);
 if (ret)
  return ret;
 deb_info("CODERATE LP ");
 switch (temp) {
 case 0:
  fep->code_rate_LP = FEC_1_2;
  deb_info("FEC_1_2\n");
  break;
 case 1:
  fep->code_rate_LP = FEC_2_3;
  deb_info("FEC_2_3\n");
  break;
 case 2:
  fep->code_rate_LP = FEC_3_4;
  deb_info("FEC_3_4\n");
  break;
 case 3:
  fep->code_rate_LP = FEC_5_6;
  deb_info("FEC_5_6\n");
  break;
 case 4:
  fep->code_rate_LP = FEC_7_8;
  deb_info("FEC_7_8\n");
  break;
 }


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_tpsd_gi,
          reg_tpsd_gi_pos, reg_tpsd_gi_len, &temp);
 if (ret)
  return ret;
 deb_info("GUARD INTERVAL ");
 switch (temp) {
 case 0:
  fep->guard_interval = GUARD_INTERVAL_1_32;
  deb_info("1_32\n");
  break;
 case 1:
  fep->guard_interval = GUARD_INTERVAL_1_16;
  deb_info("1_16\n");
  break;
 case 2:
  fep->guard_interval = GUARD_INTERVAL_1_8;
  deb_info("1_8\n");
  break;
 case 3:
  fep->guard_interval = GUARD_INTERVAL_1_4;
  deb_info("1_4\n");
  break;
 }


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_tpsd_txmod,
          reg_tpsd_txmod_pos, reg_tpsd_txmod_len,
          &temp);
 if (ret)
  return ret;
 deb_info("TRANSMISSION MODE ");
 switch (temp) {
 case 0:
  fep->transmission_mode = TRANSMISSION_MODE_2K;
  deb_info("2K\n");
  break;
 case 1:
  fep->transmission_mode = TRANSMISSION_MODE_8K;
  deb_info("8K\n");
  break;
 }


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_bw, reg_bw_pos,
          reg_bw_len, &temp);
 deb_info("BANDWIDTH ");
 switch (temp) {
 case 0:
  fep->bandwidth_hz = 6000000;
  deb_info("6\n");
  break;
 case 1:
  fep->bandwidth_hz = 7000000;
  deb_info("7\n");
  break;
 case 2:
  fep->bandwidth_hz = 8000000;
  deb_info("8\n");
  break;
 }
 return 0;
}
