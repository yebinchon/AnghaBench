
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ql3_adapter {int phyType; } ;


 int AUX_CONTROL_STATUS ;

 int PHY_AUX_DUPLEX_STAT ;

 int ql_mii_read_reg (struct ql3_adapter*,int,int*) ;

__attribute__((used)) static int ql_is_full_dup(struct ql3_adapter *qdev)
{
 u16 reg;

 switch (qdev->phyType) {
 case 129: {
  if (ql_mii_read_reg(qdev, 0x1A, &reg))
   return 0;

  return ((reg & 0x0080) && (reg & 0x1000)) != 0;
 }
 case 128:
 default: {
  if (ql_mii_read_reg(qdev, AUX_CONTROL_STATUS, &reg) < 0)
   return 0;
  return (reg & PHY_AUX_DUPLEX_STAT) != 0;
 }
 }
}
