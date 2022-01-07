
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_params {int multi_phy_config; } ;




 int PORT_HW_CFG_PHY_SELECTION_HARDWARE_DEFAULT ;
 int PORT_HW_CFG_PHY_SELECTION_MASK ;


 int PORT_HW_CFG_PHY_SWAPPED_ENABLED ;

u32 bnx2x_phy_selection(struct link_params *params)
{
 u32 phy_config_swapped, prio_cfg;
 u32 return_cfg = PORT_HW_CFG_PHY_SELECTION_HARDWARE_DEFAULT;

 phy_config_swapped = params->multi_phy_config &
  PORT_HW_CFG_PHY_SWAPPED_ENABLED;

 prio_cfg = params->multi_phy_config &
   PORT_HW_CFG_PHY_SELECTION_MASK;

 if (phy_config_swapped) {
  switch (prio_cfg) {
  case 130:
       return_cfg = 128;
       break;
  case 128:
       return_cfg = 130;
       break;
  case 129:
       return_cfg = 131;
       break;
  case 131:
       return_cfg = 129;
       break;
  }
 } else
  return_cfg = prio_cfg;

 return return_cfg;
}
