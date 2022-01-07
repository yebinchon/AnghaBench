
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_RTTBCNRC ;
 int IXGBE_RTTBCNRC_RF_DEC_MASK ;
 int IXGBE_RTTBCNRC_RF_INT_MASK ;
 int IXGBE_RTTBCNRC_RF_INT_SHIFT ;
 int IXGBE_RTTBCNRC_RS_ENA ;
 int IXGBE_RTTDQSEL ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_link_mbps (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_tx_maxrate(struct net_device *netdev,
       int queue_index, u32 maxrate)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 bcnrc_val = ixgbe_link_mbps(adapter);

 if (!maxrate)
  return 0;


 bcnrc_val <<= IXGBE_RTTBCNRC_RF_INT_SHIFT;
 bcnrc_val /= maxrate;


 bcnrc_val &= IXGBE_RTTBCNRC_RF_INT_MASK |
 IXGBE_RTTBCNRC_RF_DEC_MASK;


 bcnrc_val |= IXGBE_RTTBCNRC_RS_ENA;

 IXGBE_WRITE_REG(hw, IXGBE_RTTDQSEL, queue_index);
 IXGBE_WRITE_REG(hw, IXGBE_RTTBCNRC, bcnrc_val);

 return 0;
}
