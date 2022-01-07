
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tda18271_priv {TYPE_1__* maps; } ;
struct tda18271_map {int rfmax; int val; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
typedef enum tda18271_map_type { ____Placeholder_tda18271_map_type } tda18271_map_type ;
struct TYPE_2__ {struct tda18271_map* rf_cal_dc_over_dt; struct tda18271_map* ir_measure; struct tda18271_map* rf_cal; struct tda18271_map* gain_taper; struct tda18271_map* rf_band; struct tda18271_map* rf_cal_kmco; struct tda18271_map* bp_filter; } ;



 int BUG_ON (int) ;
 int EINVAL ;
 int ERANGE ;






 int tda_map (char*,...) ;
 int tda_warn (char*,char*) ;

int tda18271_lookup_map(struct dvb_frontend *fe,
   enum tda18271_map_type map_type,
   u32 *freq, u8 *val)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 struct tda18271_map *map = ((void*)0);
 unsigned int i = 0;
 char *map_name;
 int ret = 0;

 BUG_ON(!priv->maps);

 switch (map_type) {
 case 134:
  map = priv->maps->bp_filter;
  map_name = "bp_filter";
  break;
 case 128:
  map = priv->maps->rf_cal_kmco;
  map_name = "km";
  break;
 case 131:
  map = priv->maps->rf_band;
  map_name = "rf_band";
  break;
 case 133:
  map = priv->maps->gain_taper;
  map_name = "gain_taper";
  break;
 case 130:
  map = priv->maps->rf_cal;
  map_name = "rf_cal";
  break;
 case 132:
  map = priv->maps->ir_measure;
  map_name = "ir_measure";
  break;
 case 129:
  map = priv->maps->rf_cal_dc_over_dt;
  map_name = "rf_cal_dc_over_dt";
  break;
 default:

  map_name = "undefined";
  break;
 }

 if (!map) {
  tda_warn("%s map is not set!\n", map_name);
  ret = -EINVAL;
  goto fail;
 }

 while ((map[i].rfmax * 1000) < *freq) {
  if (map[i + 1].rfmax == 0) {
   tda_map("%s: frequency (%d) out of range\n",
    map_name, *freq);
   ret = -ERANGE;
   break;
  }
  i++;
 }
 *val = map[i].val;

 tda_map("(%d) %s: 0x%02x\n", i, map_name, *val);
fail:
 return ret;
}
