
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mii_bus {struct davinci_mdio_data* priv; } ;
struct TYPE_4__ {int bus_freq; } ;
struct davinci_mdio_data {int access_time; int dev; TYPE_3__* bus; TYPE_2__* regs; scalar_t__ skip_scan; TYPE_1__ pdata; } ;
struct TYPE_6__ {int phy_mask; } ;
struct TYPE_5__ {int alive; int version; } ;


 int PHY_MAX_ADDR ;
 int dev_info (int ,char*,int,...) ;
 int dev_warn (int ,char*) ;
 int msleep (int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int readl (int *) ;

__attribute__((used)) static int davinci_mdio_reset(struct mii_bus *bus)
{
 struct davinci_mdio_data *data = bus->priv;
 u32 phy_mask, ver;
 int ret;

 ret = pm_runtime_get_sync(data->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(data->dev);
  return ret;
 }


 msleep(PHY_MAX_ADDR * data->access_time);


 ver = readl(&data->regs->version);
 dev_info(data->dev,
   "davinci mdio revision %d.%d, bus freq %ld\n",
   (ver >> 8) & 0xff, ver & 0xff,
   data->pdata.bus_freq);

 if (data->skip_scan)
  goto done;


 phy_mask = readl(&data->regs->alive);
 if (phy_mask) {

  dev_info(data->dev, "detected phy mask %x\n", ~phy_mask);
  phy_mask = ~phy_mask;
 } else {

  dev_warn(data->dev, "no live phy, scanning all\n");
  phy_mask = 0;
 }
 data->bus->phy_mask = phy_mask;

done:
 pm_runtime_mark_last_busy(data->dev);
 pm_runtime_put_autosuspend(data->dev);

 return 0;
}
