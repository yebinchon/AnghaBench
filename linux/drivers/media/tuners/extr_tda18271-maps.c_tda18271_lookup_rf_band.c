
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tda18271_rf_tracking_filter_cal {int rfmax; int rfband; int rf_b2; int rf_b1; int rf_a2; int rf_a1; int rf3; int rf2; int rf1; int rf3_def; int rf2_def; int rf1_def; } ;
struct tda18271_priv {struct tda18271_rf_tracking_filter_cal* rf_cal_state; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int DBG_ADV ;
 int EINVAL ;
 int tda18271_debug ;
 int tda_map (char*,int,int,...) ;

int tda18271_lookup_rf_band(struct dvb_frontend *fe, u32 *freq, u8 *rf_band)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 struct tda18271_rf_tracking_filter_cal *map = priv->rf_cal_state;
 int i = 0;

 while ((map[i].rfmax * 1000) < *freq) {
  if (tda18271_debug & DBG_ADV)
   tda_map("(%d) rfmax = %d < freq = %d, rf1_def = %d, rf2_def = %d, rf3_def = %d, rf1 = %d, rf2 = %d, rf3 = %d, rf_a1 = %d, rf_a2 = %d, rf_b1 = %d, rf_b2 = %d\n",
    i, map[i].rfmax * 1000, *freq,
    map[i].rf1_def, map[i].rf2_def, map[i].rf3_def,
    map[i].rf1, map[i].rf2, map[i].rf3,
    map[i].rf_a1, map[i].rf_a2,
    map[i].rf_b1, map[i].rf_b2);
  if (map[i].rfmax == 0)
   return -EINVAL;
  i++;
 }
 if (rf_band)
  *rf_band = map[i].rfband;

 tda_map("(%d) rf_band = %02x\n", i, map[i].rfband);

 return i;
}
