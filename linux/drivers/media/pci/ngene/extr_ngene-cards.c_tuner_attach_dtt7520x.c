
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ngene_channel {size_t number; int i2c_adapter; int fe; TYPE_3__* dev; } ;
struct drxd_config {int pll_type; int pll_address; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* card_info; TYPE_1__* pci_dev; } ;
struct TYPE_5__ {struct drxd_config** fe_config; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENODEV ;
 int dev_err (struct device*,char*,int ) ;
 int dvb_attach (int ,int ,int ,int *,int ) ;
 int dvb_pll_attach ;

__attribute__((used)) static int tuner_attach_dtt7520x(struct ngene_channel *chan)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 struct drxd_config *feconf;

 feconf = chan->dev->card_info->fe_config[chan->number];

 if (!dvb_attach(dvb_pll_attach, chan->fe, feconf->pll_address,
   &chan->i2c_adapter,
   feconf->pll_type)) {
  dev_err(pdev, "No pll(%d) found!\n", feconf->pll_type);
  return -ENODEV;
 }
 return 0;
}
