
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_EIMC ;
 int IXGBE_EIMC_EX (int) ;
 int IXGBE_EIMS_RTX_QUEUE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;







__attribute__((used)) static inline void ixgbe_irq_disable_queues(struct ixgbe_adapter *adapter,
         u64 qmask)
{
 u32 mask;
 struct ixgbe_hw *hw = &adapter->hw;

 switch (hw->mac.type) {
 case 133:
  mask = (IXGBE_EIMS_RTX_QUEUE & qmask);
  IXGBE_WRITE_REG(hw, IXGBE_EIMC, mask);
  break;
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  mask = (qmask & 0xFFFFFFFF);
  if (mask)
   IXGBE_WRITE_REG(hw, IXGBE_EIMC_EX(0), mask);
  mask = (qmask >> 32);
  if (mask)
   IXGBE_WRITE_REG(hw, IXGBE_EIMC_EX(1), mask);
  break;
 default:
  break;
 }

}
