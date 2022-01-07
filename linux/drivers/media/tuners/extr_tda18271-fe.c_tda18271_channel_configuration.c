
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tda18271_std_map_item {int agc_mode; int std; int if_lvl; int fm_rfn; unsigned char rfagc_top; int if_freq; } ;
struct tda18271_priv {unsigned char* tda18271_regs; scalar_t__ id; int role; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 size_t R_CPD ;
 size_t R_EB1 ;
 size_t R_EB22 ;
 size_t R_EP1 ;
 size_t R_EP3 ;
 size_t R_EP4 ;
 size_t R_MPD ;
 size_t R_TM ;
 scalar_t__ TDA18271HDC2 ;


 int charge_pump_source (struct dvb_frontend*,int) ;
 int msleep (int) ;
 int tda18271_calc_bp_filter (struct dvb_frontend*,scalar_t__*) ;
 int tda18271_calc_cal_pll (struct dvb_frontend*,scalar_t__) ;
 int tda18271_calc_gain_taper (struct dvb_frontend*,scalar_t__*) ;
 int tda18271_calc_ir_measure (struct dvb_frontend*,scalar_t__*) ;
 int tda18271_calc_main_pll (struct dvb_frontend*,scalar_t__) ;
 int tda18271_calc_rf_band (struct dvb_frontend*,scalar_t__*) ;
 int tda18271_set_if_notch (struct dvb_frontend*) ;
 int tda18271_write_regs (struct dvb_frontend*,size_t,int) ;
 scalar_t__ tda_fail (int) ;

__attribute__((used)) static int tda18271_channel_configuration(struct dvb_frontend *fe,
       struct tda18271_std_map_item *map,
       u32 freq, u32 bw)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 int ret;
 u32 N;




 regs[R_EP3] &= ~0x1f;
 regs[R_EP3] |= (map->agc_mode << 3) | map->std;

 if (priv->id == TDA18271HDC2) {

  regs[R_EP3] &= ~0x04;
 }


 regs[R_EP4] &= ~0x03;


 regs[R_EP4] &= ~0x1c;
 regs[R_EP4] |= (map->if_lvl << 2);


 regs[R_EP4] &= ~0x80;
 regs[R_EP4] |= map->fm_rfn << 7;


 regs[R_EB22] = 0x00;
 regs[R_EB22] |= map->rfagc_top;
 ret = tda18271_write_regs(fe, R_EB22, 1);
 if (tda_fail(ret))
  goto fail;




 regs[R_EP1] |= 0x40;


 regs[R_TM] &= ~0x10;



 tda18271_calc_ir_measure(fe, &freq);

 tda18271_calc_bp_filter(fe, &freq);

 tda18271_calc_rf_band(fe, &freq);

 tda18271_calc_gain_taper(fe, &freq);





 switch (priv->role) {
 case 129:
  regs[R_EB1] |= 0x04;
  break;
 case 128:
  regs[R_EB1] &= ~0x04;
  break;
 }


 regs[R_EB1] &= ~0x02;


 regs[R_EB1] &= ~0x01;

 ret = tda18271_write_regs(fe, R_EB1, 1);
 if (tda_fail(ret))
  goto fail;



 N = map->if_freq * 1000 + freq;

 switch (priv->role) {
 case 129:
  tda18271_calc_main_pll(fe, N);
  tda18271_set_if_notch(fe);
  tda18271_write_regs(fe, R_MPD, 4);
  break;
 case 128:
  tda18271_calc_cal_pll(fe, N);
  tda18271_write_regs(fe, R_CPD, 4);

  regs[R_MPD] = regs[R_CPD] & 0x7f;
  tda18271_set_if_notch(fe);
  tda18271_write_regs(fe, R_MPD, 1);
  break;
 }

 ret = tda18271_write_regs(fe, R_TM, 7);
 if (tda_fail(ret))
  goto fail;


 charge_pump_source(fe, 1);

 msleep(1);


 charge_pump_source(fe, 0);

 msleep(20);

 if (priv->id == TDA18271HDC2) {

  if (map->fm_rfn)
   regs[R_EP3] &= ~0x04;
  else
   regs[R_EP3] |= 0x04;
  ret = tda18271_write_regs(fe, R_EP3, 1);
 }
fail:
 return ret;
}
