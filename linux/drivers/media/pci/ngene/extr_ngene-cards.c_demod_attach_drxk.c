
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
struct drxk_config {char* microcode_name; int qam_demod_parameter_count; int adr; } ;
struct device {int dummy; } ;
typedef int config ;
struct TYPE_7__ {int i2c_gate_ctrl; } ;
struct TYPE_8__ {TYPE_3__ ops; struct ngene_channel* sec_priv; } ;
struct TYPE_6__ {TYPE_1__* pci_dev; } ;
struct TYPE_5__ {struct device dev; } ;


 int ENODEV ;
 int dev_err (struct device*,char*) ;
 int drxk_attach ;
 int drxk_gate_ctrl ;
 TYPE_4__* dvb_attach (int ,struct drxk_config*,struct i2c_adapter*) ;
 int memset (struct drxk_config*,int ,int) ;

__attribute__((used)) static int demod_attach_drxk(struct ngene_channel *chan,
        struct i2c_adapter *i2c)
{
 struct device *pdev = &chan->dev->pci_dev->dev;
 struct drxk_config config;

 memset(&config, 0, sizeof(config));
 config.microcode_name = "drxk_a3.mc";
 config.qam_demod_parameter_count = 4;
 config.adr = 0x29 + (chan->number ^ 2);

 chan->fe = dvb_attach(drxk_attach, &config, i2c);
 if (!chan->fe) {
  dev_err(pdev, "No DRXK found!\n");
  return -ENODEV;
 }
 chan->fe->sec_priv = chan;
 chan->gate_ctrl = chan->fe->ops.i2c_gate_ctrl;
 chan->fe->ops.i2c_gate_ctrl = drxk_gate_ctrl;
 return 0;
}
