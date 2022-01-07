
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tda18271_std_map_item {int if_freq; } ;
struct tda18271_std_map {struct tda18271_std_map_item qam_8; struct tda18271_std_map_item qam_7; struct tda18271_std_map_item qam_6; struct tda18271_std_map_item dvbt_8; struct tda18271_std_map_item dvbt_7; struct tda18271_std_map_item dvbt_6; struct tda18271_std_map_item atsc_6; } ;
struct tda18271_priv {int frequency; int bandwidth; int if_freq; int mode; struct tda18271_std_map std; } ;
struct TYPE_3__ {int (* standby ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ analog_ops; } ;
struct dtv_frontend_properties {int delivery_system; int bandwidth_hz; int frequency; } ;
struct dvb_frontend {TYPE_2__ ops; struct tda18271_priv* tuner_priv; struct dtv_frontend_properties dtv_property_cache; } ;


 int EINVAL ;







 int TDA18271_DIGITAL ;
 int stub1 (struct dvb_frontend*) ;
 int tda18271_tune (struct dvb_frontend*,struct tda18271_std_map_item*,int,int) ;
 scalar_t__ tda_fail (int) ;
 int tda_warn (char*) ;

__attribute__((used)) static int tda18271_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 u32 delsys = c->delivery_system;
 u32 bw = c->bandwidth_hz;
 u32 freq = c->frequency;
 struct tda18271_priv *priv = fe->tuner_priv;
 struct tda18271_std_map *std_map = &priv->std;
 struct tda18271_std_map_item *map;
 int ret;

 priv->mode = TDA18271_DIGITAL;

 switch (delsys) {
 case 134:
  map = &std_map->atsc_6;
  bw = 6000000;
  break;
 case 128:
 case 130:
 case 129:
  if (bw <= 6000000) {
   map = &std_map->dvbt_6;
  } else if (bw <= 7000000) {
   map = &std_map->dvbt_7;
  } else {
   map = &std_map->dvbt_8;
  }
  break;
 case 132:
  bw = 6000000;

 case 133:
 case 131:
  if (bw <= 6000000) {
   map = &std_map->qam_6;
  } else if (bw <= 7000000) {
   map = &std_map->qam_7;
  } else {
   map = &std_map->qam_8;
  }
  break;
 default:
  tda_warn("modulation type not supported!\n");
  return -EINVAL;
 }


 if (fe->ops.analog_ops.standby)
  fe->ops.analog_ops.standby(fe);

 ret = tda18271_tune(fe, map, freq, bw);

 if (tda_fail(ret))
  goto fail;

 priv->if_freq = map->if_freq;
 priv->frequency = freq;
 priv->bandwidth = bw;
fail:
 return ret;
}
