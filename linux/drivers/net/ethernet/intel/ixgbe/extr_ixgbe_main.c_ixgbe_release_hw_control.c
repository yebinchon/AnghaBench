
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_adapter {int hw; } ;


 int IXGBE_CTRL_EXT ;
 int IXGBE_CTRL_EXT_DRV_LOAD ;
 int IXGBE_READ_REG (int *,int ) ;
 int IXGBE_WRITE_REG (int *,int ,int) ;

__attribute__((used)) static void ixgbe_release_hw_control(struct ixgbe_adapter *adapter)
{
 u32 ctrl_ext;


 ctrl_ext = IXGBE_READ_REG(&adapter->hw, IXGBE_CTRL_EXT);
 IXGBE_WRITE_REG(&adapter->hw, IXGBE_CTRL_EXT,
   ctrl_ext & ~IXGBE_CTRL_EXT_DRV_LOAD);
}
