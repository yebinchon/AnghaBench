
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stv0910_cfg {int adr; } ;
struct ngene_channel {int number; int * fe; TYPE_2__* dev; } ;
struct lnbh25_config {int i2c_address; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pci_dev; } ;
struct TYPE_3__ {struct device dev; } ;


 int ENODEV ;
 int dev_err (struct device*,char*) ;
 void* dvb_attach (int ,int *,...) ;
 int dvb_frontend_detach (int *) ;
 int lnbh25_attach ;
 struct lnbh25_config lnbh25_cfg ;
 int stv0910_attach ;
 struct stv0910_cfg stv0910_p ;

__attribute__((used)) static int demod_attach_stv0910(struct ngene_channel *chan,
    struct i2c_adapter *i2c)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 struct stv0910_cfg cfg = stv0910_p;
 struct lnbh25_config lnbcfg = lnbh25_cfg;

 chan->fe = dvb_attach(stv0910_attach, i2c, &cfg, (chan->number & 1));
 if (!chan->fe) {
  cfg.adr = 0x6c;
  chan->fe = dvb_attach(stv0910_attach, i2c,
          &cfg, (chan->number & 1));
 }
 if (!chan->fe) {
  dev_err(pdev, "stv0910_attach() failed!\n");
  return -ENODEV;
 }





 lnbcfg.i2c_address = (((chan->number & 1) ? 0x0d : 0x0c) << 1);
 if (!dvb_attach(lnbh25_attach, chan->fe, &lnbcfg, i2c)) {
  lnbcfg.i2c_address = (((chan->number & 1) ? 0x09 : 0x08) << 1);
  if (!dvb_attach(lnbh25_attach, chan->fe, &lnbcfg, i2c)) {
   dev_err(pdev, "lnbh25_attach() failed!\n");
   dvb_frontend_detach(chan->fe);
   chan->fe = ((void*)0);
   return -ENODEV;
  }
 }

 return 0;
}
