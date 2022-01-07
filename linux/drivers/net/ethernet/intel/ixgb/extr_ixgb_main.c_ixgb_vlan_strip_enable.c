
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_adapter {int hw; } ;


 int CTRL0 ;
 int IXGB_CTRL0_VME ;
 int IXGB_READ_REG (int *,int ) ;
 int IXGB_WRITE_REG (int *,int ,int ) ;

__attribute__((used)) static void
ixgb_vlan_strip_enable(struct ixgb_adapter *adapter)
{
 u32 ctrl;


 ctrl = IXGB_READ_REG(&adapter->hw, CTRL0);
 ctrl |= IXGB_CTRL0_VME;
 IXGB_WRITE_REG(&adapter->hw, CTRL0, ctrl);
}
