
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tuner_go ;
typedef int trl_nom_cfg ;
typedef int tps_given_cfg ;
struct dvb_frontend {int dummy; } ;
typedef int rs_err_cfg ;
typedef int reset ;
typedef int input_freq_cfg ;
typedef int clock_config ;
typedef int capt_range_cfg ;
typedef int agc_cfg ;
typedef int adc_ctl_1_cfg ;
 int mt352_write (struct dvb_frontend*,int*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int em28xx_mt352_terratec_xs_init(struct dvb_frontend *fe)
{

 static u8 clock_config[] = { 134, 0x38, 0x2c };
 static u8 reset[] = { 132, 0x80 };
 static u8 adc_ctl_1_cfg[] = { 137, 0x40 };
 static u8 agc_cfg[] = { 136, 0x28, 0xa0 };
 static u8 input_freq_cfg[] = { 133, 0x31, 0xb8 };
 static u8 rs_err_cfg[] = { 131, 0x00, 0x4d };
 static u8 capt_range_cfg[] = { 135, 0x32 };
 static u8 trl_nom_cfg[] = { 129, 0x64, 0x00 };
 static u8 tps_given_cfg[] = { 130, 0x40, 0x80, 0x50 };
 static u8 tuner_go[] = { 128, 0x01};

 mt352_write(fe, clock_config, sizeof(clock_config));
 usleep_range(200, 250);
 mt352_write(fe, reset, sizeof(reset));
 mt352_write(fe, adc_ctl_1_cfg, sizeof(adc_ctl_1_cfg));
 mt352_write(fe, agc_cfg, sizeof(agc_cfg));
 mt352_write(fe, input_freq_cfg, sizeof(input_freq_cfg));
 mt352_write(fe, rs_err_cfg, sizeof(rs_err_cfg));
 mt352_write(fe, capt_range_cfg, sizeof(capt_range_cfg));
 mt352_write(fe, trl_nom_cfg, sizeof(trl_nom_cfg));
 mt352_write(fe, tps_given_cfg, sizeof(tps_given_cfg));
 mt352_write(fe, tuner_go, sizeof(tuner_go));
 return 0;
}
