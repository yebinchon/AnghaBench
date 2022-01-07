
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_priv {struct mii_bus* bus; } ;
struct mii_bus {int (* write ) (struct mii_bus*,int ,int ,int) ;int (* read ) (struct mii_bus*,int ,int ) ;int dev; } ;


 int MII_MMD_CTRL ;
 int MII_MMD_CTRL_NOINCR ;
 int MII_MMD_DATA ;
 int dev_err (int *,char*) ;
 int stub1 (struct mii_bus*,int ,int ,int) ;
 int stub2 (struct mii_bus*,int ,int ,int) ;
 int stub3 (struct mii_bus*,int ,int ,int) ;
 int stub4 (struct mii_bus*,int ,int ) ;

__attribute__((used)) static int
core_read_mmd_indirect(struct mt7530_priv *priv, int prtad, int devad)
{
 struct mii_bus *bus = priv->bus;
 int value, ret;


 ret = bus->write(bus, 0, MII_MMD_CTRL, devad);
 if (ret < 0)
  goto err;


 ret = bus->write(bus, 0, MII_MMD_DATA, prtad);
 if (ret < 0)
  goto err;


 ret = bus->write(bus, 0, MII_MMD_CTRL, (devad | MII_MMD_CTRL_NOINCR));
 if (ret < 0)
  goto err;


 value = bus->read(bus, 0, MII_MMD_DATA);

 return value;
err:
 dev_err(&bus->dev, "failed to read mmd register\n");

 return ret;
}
