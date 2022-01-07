
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int BIT_ULL (int) ;
 int ICE_PHY_TYPE_HIGH_MAX_INDEX ;
 int ICE_PHY_TYPE_LOW_MAX_INDEX ;
 int ice_get_link_speed_based_on_phy_type (int ,int ) ;

void
ice_update_phy_type(u64 *phy_type_low, u64 *phy_type_high,
      u16 link_speeds_bitmap)
{
 u64 pt_high;
 u64 pt_low;
 int index;
 u16 speed;


 for (index = 0; index <= ICE_PHY_TYPE_LOW_MAX_INDEX; index++) {
  pt_low = BIT_ULL(index);
  speed = ice_get_link_speed_based_on_phy_type(pt_low, 0);

  if (link_speeds_bitmap & speed)
   *phy_type_low |= BIT_ULL(index);
 }


 for (index = 0; index <= ICE_PHY_TYPE_HIGH_MAX_INDEX; index++) {
  pt_high = BIT_ULL(index);
  speed = ice_get_link_speed_based_on_phy_type(0, pt_high);

  if (link_speeds_bitmap & speed)
   *phy_type_high |= BIT_ULL(index);
 }
}
