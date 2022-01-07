
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PHY_ANY_ID ;
 int phy_register_fixup (int ,int ,int ,int (*) (struct phy_device*)) ;

int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
          int (*run)(struct phy_device *))
{
 return phy_register_fixup(PHY_ANY_ID, phy_uid, phy_uid_mask, run);
}
