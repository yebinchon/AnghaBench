
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stv6110x_devctl {int tuner_get_status; int tuner_set_refclk; int tuner_get_bbgain; int tuner_set_bbgain; int tuner_get_bandwidth; int tuner_set_bandwidth; int tuner_get_frequency; int tuner_set_frequency; int tuner_set_mode; int tuner_sleep; int tuner_init; } ;
struct stv6110x_config {int dummy; } ;
struct stv090x_config {int tuner_get_status; int tuner_set_refclk; int tuner_get_bbgain; int tuner_set_bbgain; int tuner_get_bandwidth; int tuner_set_bandwidth; int tuner_get_frequency; int tuner_set_frequency; int tuner_set_mode; int tuner_sleep; int tuner_init; } ;
struct ngene_channel {size_t number; int fe; TYPE_3__* dev; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* card_info; TYPE_1__* pci_dev; } ;
struct TYPE_5__ {scalar_t__* tuner_config; scalar_t__* fe_config; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENODEV ;
 int dev_err (struct device*,char*) ;
 struct stv6110x_devctl* dvb_attach (int ,int ,struct stv6110x_config*,struct i2c_adapter*) ;
 struct i2c_adapter* i2c_adapter_from_chan (struct ngene_channel*) ;
 int stv6110x_attach ;

__attribute__((used)) static int tuner_attach_stv6110(struct ngene_channel *chan)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 struct i2c_adapter *i2c = i2c_adapter_from_chan(chan);
 struct stv090x_config *feconf = (struct stv090x_config *)
  chan->dev->card_info->fe_config[chan->number];
 struct stv6110x_config *tunerconf = (struct stv6110x_config *)
  chan->dev->card_info->tuner_config[chan->number];
 const struct stv6110x_devctl *ctl;

 ctl = dvb_attach(stv6110x_attach, chan->fe, tunerconf, i2c);
 if (ctl == ((void*)0)) {
  dev_err(pdev, "No STV6110X found!\n");
  return -ENODEV;
 }

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
