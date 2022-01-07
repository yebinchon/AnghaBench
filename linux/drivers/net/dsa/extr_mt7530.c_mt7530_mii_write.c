
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mt7530_priv {struct mii_bus* bus; } ;
struct mii_bus {int (* write ) (struct mii_bus*,int,int,int) ;int dev; } ;


 int dev_err (int *,char*) ;
 int stub1 (struct mii_bus*,int,int,int) ;
 int stub2 (struct mii_bus*,int,int,int) ;
 int stub3 (struct mii_bus*,int,int,int) ;

__attribute__((used)) static int
mt7530_mii_write(struct mt7530_priv *priv, u32 reg, u32 val)
{
 struct mii_bus *bus = priv->bus;
 u16 page, r, lo, hi;
 int ret;

 page = (reg >> 6) & 0x3ff;
 r = (reg >> 2) & 0xf;
 lo = val & 0xffff;
 hi = val >> 16;


 ret = bus->write(bus, 0x1f, 0x1f, page);
 if (ret < 0)
  goto err;

 ret = bus->write(bus, 0x1f, r, lo);
 if (ret < 0)
  goto err;

 ret = bus->write(bus, 0x1f, 0x10, hi);
err:
 if (ret < 0)
  dev_err(&bus->dev,
   "failed to write mt7530 register\n");
 return ret;
}
