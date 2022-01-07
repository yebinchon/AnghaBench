
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {struct mii_bus* bus; } ;
struct mii_bus {int (* write ) (struct mii_bus*,int ,int ,int) ;int dev; } ;


 int MII_MMD_CTRL ;
 int MII_MMD_CTRL_NOINCR ;
 int MII_MMD_DATA ;
 int dev_err (int *,char*) ;
 int stub1 (struct mii_bus*,int ,int ,int) ;
 int stub2 (struct mii_bus*,int ,int ,int) ;
 int stub3 (struct mii_bus*,int ,int ,int) ;
 int stub4 (struct mii_bus*,int ,int ,int) ;

__attribute__((used)) static int
core_write_mmd_indirect(struct mt7530_priv *priv, int prtad,
   int devad, u32 data)
{
 struct mii_bus *bus = priv->bus;
 int ret;


 ret = bus->write(bus, 0, MII_MMD_CTRL, devad);
 if (ret < 0)
  goto err;


 ret = bus->write(bus, 0, MII_MMD_DATA, prtad);
 if (ret < 0)
  goto err;


 ret = bus->write(bus, 0, MII_MMD_CTRL, (devad | MII_MMD_CTRL_NOINCR));
 if (ret < 0)
  goto err;


 ret = bus->write(bus, 0, MII_MMD_DATA, data);
err:
 if (ret < 0)
  dev_err(&bus->dev,
   "failed to write mmd register\n");
 return ret;
}
