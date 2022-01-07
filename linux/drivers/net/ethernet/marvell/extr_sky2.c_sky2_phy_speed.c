
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {int flags; } ;




 int PHY_M_PS_SPEED_MSK ;
 int SKY2_HW_FIBRE_PHY ;
 int SKY2_HW_GIGABIT ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;

__attribute__((used)) static u16 sky2_phy_speed(const struct sky2_hw *hw, u16 aux)
{
 if (hw->flags & SKY2_HW_FIBRE_PHY)
  return SPEED_1000;

 if (!(hw->flags & SKY2_HW_GIGABIT)) {
  if (aux & 129)
   return SPEED_100;
  else
   return SPEED_10;
 }

 switch (aux & PHY_M_PS_SPEED_MSK) {
 case 128:
  return SPEED_1000;
 case 129:
  return SPEED_100;
 default:
  return SPEED_10;
 }
}
