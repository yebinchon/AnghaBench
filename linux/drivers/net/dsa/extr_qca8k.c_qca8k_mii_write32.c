
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_bus {int (* write ) (struct mii_bus*,int,int,int) ;int dev; } ;


 int dev_err_ratelimited (int *,char*) ;
 int stub1 (struct mii_bus*,int,int,int) ;
 int stub2 (struct mii_bus*,int,int,int) ;

__attribute__((used)) static void
qca8k_mii_write32(struct mii_bus *bus, int phy_id, u32 regnum, u32 val)
{
 u16 lo, hi;
 int ret;

 lo = val & 0xffff;
 hi = (u16)(val >> 16);

 ret = bus->write(bus, phy_id, regnum, lo);
 if (ret >= 0)
  ret = bus->write(bus, phy_id, regnum + 1, hi);
 if (ret < 0)
  dev_err_ratelimited(&bus->dev,
        "failed to write qca8k 32bit register\n");
}
