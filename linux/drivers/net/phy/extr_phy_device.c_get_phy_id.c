
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_c45_device_ids {int dummy; } ;
struct mii_bus {int dummy; } ;


 int EIO ;
 int ENODEV ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 int get_phy_c45_ids (struct mii_bus*,int,int*,struct phy_c45_device_ids*) ;
 int mdiobus_read (struct mii_bus*,int,int ) ;

__attribute__((used)) static int get_phy_id(struct mii_bus *bus, int addr, u32 *phy_id,
        bool is_c45, struct phy_c45_device_ids *c45_ids)
{
 int phy_reg;

 if (is_c45)
  return get_phy_c45_ids(bus, addr, phy_id, c45_ids);


 phy_reg = mdiobus_read(bus, addr, MII_PHYSID1);
 if (phy_reg < 0) {

  return (phy_reg == -EIO || phy_reg == -ENODEV) ? -ENODEV : -EIO;
 }

 *phy_id = phy_reg << 16;


 phy_reg = mdiobus_read(bus, addr, MII_PHYSID2);
 if (phy_reg < 0)
  return -EIO;

 *phy_id |= phy_reg;

 return 0;
}
