
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ngene_channel {size_t number; int fe; TYPE_2__* dev; int i2c_adapter; } ;
struct drxd_config {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct drxd_config** fe_config; } ;
struct TYPE_5__ {TYPE_1__* pci_dev; TYPE_3__* card_info; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENODEV ;
 int dev_err (struct device*,char*) ;
 int drxd_attach ;
 int dvb_attach (int ,struct drxd_config*,struct ngene_channel*,int *,struct device*) ;

__attribute__((used)) static int demod_attach_drxd(struct ngene_channel *chan)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 struct drxd_config *feconf;

 feconf = chan->dev->card_info->fe_config[chan->number];

 chan->fe = dvb_attach(drxd_attach, feconf, chan,
   &chan->i2c_adapter, &chan->dev->pci_dev->dev);
 if (!chan->fe) {
  dev_err(pdev, "No DRXD found!\n");
  return -ENODEV;
 }
 return 0;
}
