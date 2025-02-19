
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_c45_device_ids {int* device_ids; int devices_in_package; } ;
struct mii_bus {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EIO ;
 int MII_ADDR_C45 ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 int get_phy_c45_devs_in_pkg (struct mii_bus*,int,int,int*) ;
 int mdiobus_read (struct mii_bus*,int,int) ;

__attribute__((used)) static int get_phy_c45_ids(struct mii_bus *bus, int addr, u32 *phy_id,
      struct phy_c45_device_ids *c45_ids) {
 int phy_reg;
 int i, reg_addr;
 const int num_ids = ARRAY_SIZE(c45_ids->device_ids);
 u32 *devs = &c45_ids->devices_in_package;




 for (i = 1; i < num_ids && *devs == 0; i++) {
  phy_reg = get_phy_c45_devs_in_pkg(bus, addr, i, devs);
  if (phy_reg < 0)
   return -EIO;

  if ((*devs & 0x1fffffff) == 0x1fffffff) {





   phy_reg = get_phy_c45_devs_in_pkg(bus, addr, 0, devs);
   if (phy_reg < 0)
    return -EIO;

   if ((*devs & 0x1fffffff) == 0x1fffffff) {
    *phy_id = 0xffffffff;
    return 0;
   } else {
    break;
   }
  }
 }


 for (i = 1; i < num_ids; i++) {
  if (!(c45_ids->devices_in_package & (1 << i)))
   continue;

  reg_addr = MII_ADDR_C45 | i << 16 | MII_PHYSID1;
  phy_reg = mdiobus_read(bus, addr, reg_addr);
  if (phy_reg < 0)
   return -EIO;
  c45_ids->device_ids[i] = phy_reg << 16;

  reg_addr = MII_ADDR_C45 | i << 16 | MII_PHYSID2;
  phy_reg = mdiobus_read(bus, addr, reg_addr);
  if (phy_reg < 0)
   return -EIO;
  c45_ids->device_ids[i] |= phy_reg;
 }
 *phy_id = 0;
 return 0;
}
