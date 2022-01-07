
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 size_t R_CPD ;
 size_t R_EB13 ;
 size_t R_EB14 ;
 size_t R_EB18 ;
 size_t R_EB20 ;
 size_t R_EP1 ;
 size_t R_EP2 ;
 size_t R_EP3 ;
 size_t R_EP4 ;
 size_t R_MPD ;
 int TDA18271_CAL_PLL ;
 int TDA18271_MAIN_PLL ;
 int msleep (int) ;
 int tda18271_calc_bp_filter (struct dvb_frontend*,int*) ;
 int tda18271_calc_cal_pll (struct dvb_frontend*,int) ;
 int tda18271_calc_gain_taper (struct dvb_frontend*,int*) ;
 int tda18271_calc_km (struct dvb_frontend*,int*) ;
 int tda18271_calc_main_pll (struct dvb_frontend*,int) ;
 int tda18271_calc_rf_band (struct dvb_frontend*,int*) ;
 int tda18271_charge_pump_source (struct dvb_frontend*,int ,int) ;
 int tda18271_read_extended (struct dvb_frontend*) ;
 int tda18271_write_regs (struct dvb_frontend*,size_t,int) ;

__attribute__((used)) static int tda18271_calibrate_rf(struct dvb_frontend *fe, u32 freq)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 u32 N;


 regs[R_EP4] &= ~0x03;
 tda18271_write_regs(fe, R_EP4, 1);


 regs[R_EP3] |= 0x40;

 regs[R_EB18] |= 0x03;
 tda18271_write_regs(fe, R_EB18, 1);



 tda18271_calc_bp_filter(fe, &freq);
 tda18271_calc_gain_taper(fe, &freq);
 tda18271_calc_rf_band(fe, &freq);
 tda18271_calc_km(fe, &freq);

 tda18271_write_regs(fe, R_EP1, 3);
 tda18271_write_regs(fe, R_EB13, 1);


 tda18271_charge_pump_source(fe, TDA18271_MAIN_PLL, 1);


 tda18271_charge_pump_source(fe, TDA18271_CAL_PLL, 1);


 regs[R_EB14] = 0x00;
 tda18271_write_regs(fe, R_EB14, 1);


 regs[R_EB20] &= ~0x20;
 tda18271_write_regs(fe, R_EB20, 1);


 regs[R_EP4] |= 0x03;
 tda18271_write_regs(fe, R_EP4, 2);




 N = freq;

 tda18271_calc_cal_pll(fe, N);
 tda18271_write_regs(fe, R_CPD, 4);


 N += 1000000;

 tda18271_calc_main_pll(fe, N);
 tda18271_write_regs(fe, R_MPD, 4);

 msleep(5);

 tda18271_write_regs(fe, R_EP2, 1);
 tda18271_write_regs(fe, R_EP1, 1);
 tda18271_write_regs(fe, R_EP2, 1);
 tda18271_write_regs(fe, R_EP1, 1);




 tda18271_charge_pump_source(fe, TDA18271_MAIN_PLL, 0);


 tda18271_charge_pump_source(fe, TDA18271_CAL_PLL, 0);

 msleep(10);


 regs[R_EB20] |= 0x20;
 tda18271_write_regs(fe, R_EB20, 1);

 msleep(60);




 regs[R_EP4] &= ~0x03;


 regs[R_EP3] &= ~0x40;

 regs[R_EB18] &= ~0x03;
 tda18271_write_regs(fe, R_EB18, 1);

 tda18271_write_regs(fe, R_EP3, 2);


 tda18271_write_regs(fe, R_EP1, 1);


 tda18271_read_extended(fe);

 return regs[R_EB14];
}
