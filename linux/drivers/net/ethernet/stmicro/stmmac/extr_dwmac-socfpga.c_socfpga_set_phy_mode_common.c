
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;






 int SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII ;
 int SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII ;
 int SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RMII ;

__attribute__((used)) static int socfpga_set_phy_mode_common(int phymode, u32 *val)
{
 switch (phymode) {
 case 131:
 case 130:
  *val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII;
  break;
 case 132:
 case 133:
 case 128:
  *val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII;
  break;
 case 129:
  *val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RMII;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
