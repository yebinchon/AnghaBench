
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stv090x_config {scalar_t__ tuner_i2c_lock; } ;
struct ngene_channel {size_t number; TYPE_4__* fe; TYPE_3__* dev; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {struct ngene_channel* analog_demod_priv; } ;
struct TYPE_8__ {TYPE_2__* card_info; TYPE_1__* pci_dev; } ;
struct TYPE_7__ {int * lnb; scalar_t__* fe_config; } ;
struct TYPE_6__ {struct device dev; } ;


 int ENODEV ;
 int STV090x_DEMODULATOR_0 ;
 int STV090x_DEMODULATOR_1 ;
 int dev_err (struct device*,char*) ;
 TYPE_4__* dvb_attach (int ,...) ;
 int dvb_frontend_detach (TYPE_4__*) ;
 struct i2c_adapter* i2c_adapter_from_chan (struct ngene_channel*) ;
 int lnbh24_attach ;
 int stv090x_attach ;

__attribute__((used)) static int demod_attach_stv0900(struct ngene_channel *chan)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 struct i2c_adapter *i2c = i2c_adapter_from_chan(chan);
 struct stv090x_config *feconf = (struct stv090x_config *)
  chan->dev->card_info->fe_config[chan->number];

 chan->fe = dvb_attach(stv090x_attach, feconf, i2c,
   (chan->number & 1) == 0 ? STV090x_DEMODULATOR_0
      : STV090x_DEMODULATOR_1);
 if (chan->fe == ((void*)0)) {
  dev_err(pdev, "No STV0900 found!\n");
  return -ENODEV;
 }


 if (feconf->tuner_i2c_lock)
  chan->fe->analog_demod_priv = chan;

 if (!dvb_attach(lnbh24_attach, chan->fe, i2c, 0,
   0, chan->dev->card_info->lnb[chan->number])) {
  dev_err(pdev, "No LNBH24 found!\n");
  dvb_frontend_detach(chan->fe);
  chan->fe = ((void*)0);
  return -ENODEV;
 }

 return 0;
}
