
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ngene_channel {int number; TYPE_4__* fe; int gate_ctrl; TYPE_2__* dev; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct cxd2841er_config {int i2c_addr; int flags; int xtal; } ;
struct TYPE_7__ {int i2c_gate_ctrl; } ;
struct TYPE_8__ {TYPE_3__ ops; struct ngene_channel* sec_priv; } ;
struct TYPE_6__ {TYPE_1__* pci_dev; } ;
struct TYPE_5__ {struct device dev; } ;


 int CXD2841ER_AUTO_IFHZ ;
 int CXD2841ER_EARLY_TUNE ;
 int CXD2841ER_NO_AGCNEG ;
 int CXD2841ER_NO_WAIT_LOCK ;
 int CXD2841ER_TSBITS ;
 int CXD2841ER_TS_SERIAL ;
 int ENODEV ;
 int SONY_XTAL_20500 ;
 int SONY_XTAL_24000 ;
 int cxd2841er_attach_t_c ;
 int dev_err (struct device*,char*) ;
 int drxk_gate_ctrl ;
 TYPE_4__* dvb_attach (int ,struct cxd2841er_config*,struct i2c_adapter*) ;

__attribute__((used)) static int demod_attach_cxd28xx(struct ngene_channel *chan,
    struct i2c_adapter *i2c, int osc24)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 struct cxd2841er_config cfg;


 cfg.i2c_addr = ((chan->number & 1) ? 0x6d : 0x6c) << 1;

 cfg.xtal = osc24 ? SONY_XTAL_24000 : SONY_XTAL_20500;
 cfg.flags = CXD2841ER_AUTO_IFHZ | CXD2841ER_EARLY_TUNE |
  CXD2841ER_NO_WAIT_LOCK | CXD2841ER_NO_AGCNEG |
  CXD2841ER_TSBITS | CXD2841ER_TS_SERIAL;


 chan->fe = dvb_attach(cxd2841er_attach_t_c, &cfg, i2c);

 if (!chan->fe) {
  dev_err(pdev, "CXD28XX attach failed!\n");
  return -ENODEV;
 }

 chan->fe->sec_priv = chan;
 chan->gate_ctrl = chan->fe->ops.i2c_gate_ctrl;
 chan->fe->ops.i2c_gate_ctrl = drxk_gate_ctrl;
 return 0;
}
