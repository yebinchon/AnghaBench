
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stv6110x_devctl {int tuner_get_status; int tuner_set_refclk; int tuner_get_bbgain; int tuner_set_bbgain; int tuner_get_bandwidth; int tuner_set_bandwidth; int tuner_get_frequency; int tuner_set_frequency; int tuner_set_mode; int tuner_sleep; int tuner_init; } ;
struct stv6110x_config {int addr; } ;
struct stv090x_config {int tuner_get_status; int tuner_set_refclk; int tuner_get_bbgain; int tuner_set_bbgain; int tuner_get_bandwidth; int tuner_set_bandwidth; int tuner_get_frequency; int tuner_set_frequency; int tuner_set_mode; int tuner_sleep; int tuner_init; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct ddb_input {int nr; TYPE_3__* port; } ;
struct ddb_dvb {int fe; } ;
struct TYPE_6__ {TYPE_2__* dev; struct ddb_dvb* dvb; TYPE_1__* i2c; } ;
struct TYPE_5__ {struct device* dev; } ;
struct TYPE_4__ {struct i2c_adapter adap; } ;


 int ENODEV ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int,int ) ;
 struct stv6110x_devctl* dvb_attach (int ,int ,struct stv6110x_config*,struct i2c_adapter*) ;
 struct stv090x_config stv0900 ;
 struct stv090x_config stv0900_aa ;
 struct stv6110x_config stv6110a ;
 struct stv6110x_config stv6110b ;
 int stv6110x_attach ;

__attribute__((used)) static int tuner_attach_stv6110(struct ddb_input *input, int type)
{
 struct i2c_adapter *i2c = &input->port->i2c->adap;
 struct ddb_dvb *dvb = &input->port->dvb[input->nr & 1];
 struct device *dev = input->port->dev->dev;
 struct stv090x_config *feconf = type ? &stv0900_aa : &stv0900;
 struct stv6110x_config *tunerconf = (input->nr & 1) ?
  &stv6110b : &stv6110a;
 const struct stv6110x_devctl *ctl;

 ctl = dvb_attach(stv6110x_attach, dvb->fe, tunerconf, i2c);
 if (!ctl) {
  dev_err(dev, "No STV6110X found!\n");
  return -ENODEV;
 }
 dev_info(dev, "attach tuner input %d adr %02x\n",
   input->nr, tunerconf->addr);

 feconf->tuner_init = ctl->tuner_init;
 feconf->tuner_sleep = ctl->tuner_sleep;
 feconf->tuner_set_mode = ctl->tuner_set_mode;
 feconf->tuner_set_frequency = ctl->tuner_set_frequency;
 feconf->tuner_get_frequency = ctl->tuner_get_frequency;
 feconf->tuner_set_bandwidth = ctl->tuner_set_bandwidth;
 feconf->tuner_get_bandwidth = ctl->tuner_get_bandwidth;
 feconf->tuner_set_bbgain = ctl->tuner_set_bbgain;
 feconf->tuner_get_bbgain = ctl->tuner_get_bbgain;
 feconf->tuner_set_refclk = ctl->tuner_set_refclk;
 feconf->tuner_get_status = ctl->tuner_get_status;

 return 0;
}
