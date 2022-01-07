
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ql3_adapter {int dummy; } ;


 int PHY_NEG_PARTNER ;
 int PHY_NEG_PAUSE ;
 scalar_t__ ql_mii_read_reg (struct ql3_adapter*,int ,int*) ;

__attribute__((used)) static int ql_is_phy_neg_pause(struct ql3_adapter *qdev)
{
 u16 reg;

 if (ql_mii_read_reg(qdev, PHY_NEG_PARTNER, &reg) < 0)
  return 0;

 return (reg & PHY_NEG_PAUSE) != 0;
}
