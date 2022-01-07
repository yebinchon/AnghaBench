
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_hw {int dummy; } ;




 int PHY_M_PS_SPEED_MSK ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;

__attribute__((used)) static u16 yukon_speed(const struct skge_hw *hw, u16 aux)
{
 switch (aux & PHY_M_PS_SPEED_MSK) {
 case 128:
  return SPEED_1000;
 case 129:
  return SPEED_100;
 default:
  return SPEED_10;
 }
}
