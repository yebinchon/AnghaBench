
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_adapter {int hw; } ;


 int IXGBE_HLREG0 ;
 int IXGBE_HLREG0_LPBK ;
 int IXGBE_READ_REG (int *,int ) ;
 int IXGBE_WRITE_REG (int *,int ,int ) ;

__attribute__((used)) static void ixgbe_loopback_cleanup(struct ixgbe_adapter *adapter)
{
 u32 reg_data;

 reg_data = IXGBE_READ_REG(&adapter->hw, IXGBE_HLREG0);
 reg_data &= ~IXGBE_HLREG0_LPBK;
 IXGBE_WRITE_REG(&adapter->hw, IXGBE_HLREG0, reg_data);
}
