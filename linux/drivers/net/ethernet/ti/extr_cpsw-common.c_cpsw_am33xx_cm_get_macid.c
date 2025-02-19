
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct regmap {int dummy; } ;
struct device {int of_node; } ;


 int CTRL_MAC_HI_REG (int ,int) ;
 int CTRL_MAC_LO_REG (int ,int) ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 struct regmap* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int cpsw_am33xx_cm_get_macid(struct device *dev, u16 offset, int slave,
        u8 *mac_addr)
{
 u32 macid_lo;
 u32 macid_hi;
 struct regmap *syscon;

 syscon = syscon_regmap_lookup_by_phandle(dev->of_node, "syscon");
 if (IS_ERR(syscon)) {
  if (PTR_ERR(syscon) == -ENODEV)
   return 0;
  return PTR_ERR(syscon);
 }

 regmap_read(syscon, CTRL_MAC_LO_REG(offset, slave), &macid_lo);
 regmap_read(syscon, CTRL_MAC_HI_REG(offset, slave), &macid_hi);

 mac_addr[5] = (macid_lo >> 8) & 0xff;
 mac_addr[4] = macid_lo & 0xff;
 mac_addr[3] = (macid_hi >> 24) & 0xff;
 mac_addr[2] = (macid_hi >> 16) & 0xff;
 mac_addr[1] = (macid_hi >> 8) & 0xff;
 mac_addr[0] = macid_hi & 0xff;

 return 0;
}
