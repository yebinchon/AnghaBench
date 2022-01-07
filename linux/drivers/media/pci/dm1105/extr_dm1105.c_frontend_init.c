
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dm1105_dev {int boardnr; TYPE_3__* fe; int dvb_adapter; TYPE_1__* pdev; int i2c_adap; int i2c_bb_adap; } ;
struct TYPE_7__ {int (* release ) (TYPE_3__*) ;void* set_voltage; } ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct TYPE_6__ {int dev; } ;






 int DVB_PLL_OPERA1 ;
 int ENODEV ;
 int GPIO15 ;
 int cx24116_attach ;
 int dev_err (int *,char*) ;
 int dm1105_gpio_clear (struct dm1105_dev*,int ) ;
 int dm1105_gpio_enable (struct dm1105_dev*,int ,int) ;
 int dm1105_gpio_set (struct dm1105_dev*,int ) ;
 void* dm1105_set_voltage ;
 int ds3000_attach ;
 void* dvb_attach (int ,TYPE_3__*,int,...) ;
 int dvb_pll_attach ;
 int dvb_register_frontend (int *,TYPE_3__*) ;
 int dvbworld_ds3000_config ;
 int dvbworld_ts2020_config ;
 int earda_config ;
 int msleep (int) ;
 int serit_config ;
 int serit_sp2633_config ;
 int sharp_z0194a_config ;
 int si21xx_attach ;
 int stb6000_attach ;
 int stub1 (TYPE_3__*) ;
 int stv0288_attach ;
 int stv0299_attach ;
 int ts2020_attach ;

__attribute__((used)) static int frontend_init(struct dm1105_dev *dev)
{
 int ret;

 switch (dev->boardnr) {
 case 128:
  dm1105_gpio_enable(dev, GPIO15, 1);
  dm1105_gpio_clear(dev, GPIO15);
  msleep(100);
  dm1105_gpio_set(dev, GPIO15);
  msleep(200);
  dev->fe = dvb_attach(
   stv0299_attach, &sharp_z0194a_config,
   &dev->i2c_bb_adap);
  if (dev->fe) {
   dev->fe->ops.set_voltage = dm1105_set_voltage;
   dvb_attach(dvb_pll_attach, dev->fe, 0x60,
     &dev->i2c_bb_adap, DVB_PLL_OPERA1);
   break;
  }

  dev->fe = dvb_attach(
   stv0288_attach, &earda_config,
   &dev->i2c_bb_adap);
  if (dev->fe) {
   dev->fe->ops.set_voltage = dm1105_set_voltage;
   dvb_attach(stb6000_attach, dev->fe, 0x61,
     &dev->i2c_bb_adap);
   break;
  }

  dev->fe = dvb_attach(
   si21xx_attach, &serit_config,
   &dev->i2c_bb_adap);
  if (dev->fe)
   dev->fe->ops.set_voltage = dm1105_set_voltage;
  break;
 case 129:
  dev->fe = dvb_attach(
   cx24116_attach, &serit_sp2633_config,
   &dev->i2c_adap);
  if (dev->fe) {
   dev->fe->ops.set_voltage = dm1105_set_voltage;
   break;
  }

  dev->fe = dvb_attach(
   ds3000_attach, &dvbworld_ds3000_config,
   &dev->i2c_adap);
  if (dev->fe) {
   dvb_attach(ts2020_attach, dev->fe,
    &dvbworld_ts2020_config, &dev->i2c_adap);
   dev->fe->ops.set_voltage = dm1105_set_voltage;
  }

  break;
 case 130:
 case 131:
 default:
  dev->fe = dvb_attach(
   stv0299_attach, &sharp_z0194a_config,
   &dev->i2c_adap);
  if (dev->fe) {
   dev->fe->ops.set_voltage = dm1105_set_voltage;
   dvb_attach(dvb_pll_attach, dev->fe, 0x60,
     &dev->i2c_adap, DVB_PLL_OPERA1);
   break;
  }

  dev->fe = dvb_attach(
   stv0288_attach, &earda_config,
   &dev->i2c_adap);
  if (dev->fe) {
   dev->fe->ops.set_voltage = dm1105_set_voltage;
   dvb_attach(stb6000_attach, dev->fe, 0x61,
     &dev->i2c_adap);
   break;
  }

  dev->fe = dvb_attach(
   si21xx_attach, &serit_config,
   &dev->i2c_adap);
  if (dev->fe)
   dev->fe->ops.set_voltage = dm1105_set_voltage;

 }

 if (!dev->fe) {
  dev_err(&dev->pdev->dev, "could not attach frontend\n");
  return -ENODEV;
 }

 ret = dvb_register_frontend(&dev->dvb_adapter, dev->fe);
 if (ret < 0) {
  if (dev->fe->ops.release)
   dev->fe->ops.release(dev->fe);
  dev->fe = ((void*)0);
  return ret;
 }

 return 0;
}
