
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ql3_adapter {int phyType; } ;


 int AUX_CONTROL_STATUS ;

 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int ql_mii_read_reg (struct ql3_adapter*,int,int*) ;

__attribute__((used)) static int ql_phy_get_speed(struct ql3_adapter *qdev)
{
 u16 reg;

 switch (qdev->phyType) {
 case 128: {
  if (ql_mii_read_reg(qdev, 0x1A, &reg) < 0)
   return 0;

  reg = (reg >> 8) & 3;
  break;
 }
 default:
  if (ql_mii_read_reg(qdev, AUX_CONTROL_STATUS, &reg) < 0)
   return 0;

  reg = (((reg & 0x18) >> 3) & 3);
 }

 switch (reg) {
 case 2:
  return SPEED_1000;
 case 1:
  return SPEED_100;
 case 0:
  return SPEED_10;
 default:
  return -1;
 }
}
