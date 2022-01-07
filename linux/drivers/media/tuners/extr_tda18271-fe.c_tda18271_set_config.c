
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_config {scalar_t__ std_map; } ;
struct dvb_frontend {int dummy; } ;


 int tda18271_init (struct dvb_frontend*) ;
 scalar_t__ tda18271_need_cal_on_startup (struct tda18271_config*) ;
 int tda18271_setup_configuration (struct dvb_frontend*,struct tda18271_config*) ;
 int tda18271_update_std_map (struct dvb_frontend*,scalar_t__) ;

__attribute__((used)) static int tda18271_set_config(struct dvb_frontend *fe, void *priv_cfg)
{
 struct tda18271_config *cfg = (struct tda18271_config *) priv_cfg;

 tda18271_setup_configuration(fe, cfg);

 if (tda18271_need_cal_on_startup(cfg))
  tda18271_init(fe);


 if ((cfg) && (cfg->std_map))
  tda18271_update_std_map(fe, cfg->std_map);

 return 0;
}
