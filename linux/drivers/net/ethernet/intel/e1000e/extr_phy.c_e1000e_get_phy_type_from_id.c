
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum e1000_phy_type { ____Placeholder_e1000_phy_type } e1000_phy_type ;
 int e1000_phy_82577 ;
 int e1000_phy_82578 ;
 int e1000_phy_82579 ;
 int e1000_phy_bm ;
 int e1000_phy_gg82563 ;
 int e1000_phy_i217 ;
 int e1000_phy_ife ;
 int e1000_phy_igp_2 ;
 int e1000_phy_igp_3 ;
 int e1000_phy_m88 ;
 int e1000_phy_unknown ;

enum e1000_phy_type e1000e_get_phy_type_from_id(u32 phy_id)
{
 enum e1000_phy_type phy_type = e1000_phy_unknown;

 switch (phy_id) {
 case 130:
 case 131:
 case 128:
 case 129:
  phy_type = e1000_phy_m88;
  break;
 case 133:
  phy_type = e1000_phy_igp_2;
  break;
 case 141:
  phy_type = e1000_phy_gg82563;
  break;
 case 132:
  phy_type = e1000_phy_igp_3;
  break;
 case 135:
 case 134:
 case 136:
  phy_type = e1000_phy_ife;
  break;
 case 143:
 case 142:
  phy_type = e1000_phy_bm;
  break;
 case 138:
  phy_type = e1000_phy_82578;
  break;
 case 139:
  phy_type = e1000_phy_82577;
  break;
 case 137:
  phy_type = e1000_phy_82579;
  break;
 case 140:
  phy_type = e1000_phy_i217;
  break;
 default:
  phy_type = e1000_phy_unknown;
  break;
 }
 return phy_type;
}
