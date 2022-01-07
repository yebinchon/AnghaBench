
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tda18271_rf_tracking_filter_cal {int rf1_def; int rf2_def; int rf3_def; int rf_a1; int rf_b1; int rf_a2; int rf_b2; scalar_t__ rf3; scalar_t__ rf2; scalar_t__ rf1; } ;
struct tda18271_priv {unsigned char* tda18271_regs; struct tda18271_rf_tracking_filter_cal* rf_cal_state; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
typedef int s32 ;


 int BUG () ;



 size_t R_EB14 ;
 int tda18271_calc_rf_cal (struct dvb_frontend*,scalar_t__*) ;
 scalar_t__ tda18271_calibrate_rf (struct dvb_frontend*,scalar_t__) ;
 int tda18271_lookup_rf_band (struct dvb_frontend*,scalar_t__*,int *) ;
 int tda18271_powerscan (struct dvb_frontend*,scalar_t__*,scalar_t__*) ;
 int tda_cal (char*,scalar_t__,int) ;
 scalar_t__ tda_fail (int) ;

__attribute__((used)) static int tda18271_rf_tracking_filters_init(struct dvb_frontend *fe, u32 freq)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 struct tda18271_rf_tracking_filter_cal *map = priv->rf_cal_state;
 unsigned char *regs = priv->tda18271_regs;
 int bcal, rf, i;
 s32 divisor, dividend;



 u32 rf_default[3];
 u32 rf_freq[3];
 s32 prog_cal[3];
 s32 prog_tab[3];

 i = tda18271_lookup_rf_band(fe, &freq, ((void*)0));

 if (tda_fail(i))
  return i;

 rf_default[0] = 1000 * map[i].rf1_def;
 rf_default[1] = 1000 * map[i].rf2_def;
 rf_default[2] = 1000 * map[i].rf3_def;

 for (rf = 0; rf <= 2; rf++) {
  if (0 == rf_default[rf])
   return 0;
  tda_cal("freq = %d, rf = %d\n", freq, rf);


  bcal = tda18271_powerscan(fe, &rf_default[rf], &rf_freq[rf]);
  if (tda_fail(bcal))
   return bcal;

  tda18271_calc_rf_cal(fe, &rf_freq[rf]);
  prog_tab[rf] = (s32)regs[R_EB14];

  if (1 == bcal)
   prog_cal[rf] =
    (s32)tda18271_calibrate_rf(fe, rf_freq[rf]);
  else
   prog_cal[rf] = prog_tab[rf];

  switch (rf) {
  case 0:
   map[i].rf_a1 = 0;
   map[i].rf_b1 = (prog_cal[0] - prog_tab[0]);
   map[i].rf1 = rf_freq[0] / 1000;
   break;
  case 1:
   dividend = (prog_cal[1] - prog_tab[1] -
        prog_cal[0] + prog_tab[0]);
   divisor = (s32)(rf_freq[1] - rf_freq[0]) / 1000;
   map[i].rf_a1 = (dividend / divisor);
   map[i].rf2 = rf_freq[1] / 1000;
   break;
  case 2:
   dividend = (prog_cal[2] - prog_tab[2] -
        prog_cal[1] + prog_tab[1]);
   divisor = (s32)(rf_freq[2] - rf_freq[1]) / 1000;
   map[i].rf_a2 = (dividend / divisor);
   map[i].rf_b2 = (prog_cal[1] - prog_tab[1]);
   map[i].rf3 = rf_freq[2] / 1000;
   break;
  default:
   BUG();
  }
 }

 return 0;
}
