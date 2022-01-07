
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int * rss_key; struct ixgbe_hw hw; } ;


 int IXGBE_RSSRK (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

void ixgbe_store_key(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int i;

 for (i = 0; i < 10; i++)
  IXGBE_WRITE_REG(hw, IXGBE_RSSRK(i), adapter->rss_key[i]);
}
