
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int (* read ) (struct mii_bus*,int,int) ;int dev; } ;


 int dev_err_ratelimited (int *,char*) ;
 int stub1 (struct mii_bus*,int,int) ;
 int stub2 (struct mii_bus*,int,int) ;

__attribute__((used)) static u32
qca8k_mii_read32(struct mii_bus *bus, int phy_id, u32 regnum)
{
 u32 val;
 int ret;

 ret = bus->read(bus, phy_id, regnum);
 if (ret >= 0) {
  val = ret;
  ret = bus->read(bus, phy_id, regnum + 1);
  val |= ret << 16;
 }

 if (ret < 0) {
  dev_err_ratelimited(&bus->dev,
        "failed to read qca8k 32bit register\n");
  return ret;
 }

 return val;
}
