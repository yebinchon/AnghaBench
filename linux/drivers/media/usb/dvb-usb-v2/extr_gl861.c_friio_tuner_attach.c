
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct i2c_board_info {int addr; int type; } ;
struct friio_priv {struct i2c_client* i2c_client_tuner; int demod_sub_i2c; } ;
struct dvb_usb_adapter {int * fe; } ;
struct dvb_pll_config {int fe; } ;
struct TYPE_2__ {struct dvb_pll_config tuner_cfg; struct i2c_board_info tuner_info; } ;


 int ENODEV ;
 struct friio_priv* adap_to_priv (struct dvb_usb_adapter*) ;
 struct i2c_client* dvb_module_probe (char*,int ,int ,int ,struct dvb_pll_config*) ;
 TYPE_1__ friio_config ;

__attribute__((used)) static int friio_tuner_attach(struct dvb_usb_adapter *adap)
{
 const struct i2c_board_info *info;
 struct dvb_pll_config cfg;
 struct i2c_client *cl;
 struct friio_priv *priv;

 priv = adap_to_priv(adap);
 info = &friio_config.tuner_info;
 cfg = friio_config.tuner_cfg;
 cfg.fe = adap->fe[0];

 cl = dvb_module_probe("dvb_pll", info->type,
         priv->demod_sub_i2c, info->addr, &cfg);
 if (!cl)
  return -ENODEV;
 priv->i2c_client_tuner = cl;
 return 0;
}
