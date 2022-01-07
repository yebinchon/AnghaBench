
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int state; int link_check_timeout; int flags; int lsc_int; struct ixgbe_hw hw; } ;


 int IXGBE_EIMC ;
 int IXGBE_EIMC_LSC ;
 int IXGBE_FLAG_NEED_LINK_UPDATE ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int __IXGBE_DOWN ;
 int ixgbe_service_event_schedule (struct ixgbe_adapter*) ;
 int jiffies ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_check_lsc(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;

 adapter->lsc_int++;
 adapter->flags |= IXGBE_FLAG_NEED_LINK_UPDATE;
 adapter->link_check_timeout = jiffies;
 if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
  IXGBE_WRITE_REG(hw, IXGBE_EIMC, IXGBE_EIMC_LSC);
  IXGBE_WRITE_FLUSH(hw);
  ixgbe_service_event_schedule(adapter);
 }
}
