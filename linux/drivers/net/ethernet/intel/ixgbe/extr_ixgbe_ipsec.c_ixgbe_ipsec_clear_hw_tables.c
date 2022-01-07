
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
typedef int __be32 ;


 scalar_t__ IXGBE_IPSEC_MAX_RX_IP_COUNT ;
 scalar_t__ IXGBE_IPSEC_MAX_SA_COUNT ;
 int IXGBE_IPSRXIDX ;
 int IXGBE_IPSTXIDX ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_ipsec_set_rx_ip (struct ixgbe_hw*,scalar_t__,int *) ;
 int ixgbe_ipsec_set_rx_sa (struct ixgbe_hw*,scalar_t__,int ,int *,int ,int ,int ) ;
 int ixgbe_ipsec_set_tx_sa (struct ixgbe_hw*,scalar_t__,int *,int ) ;

__attribute__((used)) static void ixgbe_ipsec_clear_hw_tables(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 buf[4] = {0, 0, 0, 0};
 u16 idx;


 IXGBE_WRITE_REG(hw, IXGBE_IPSRXIDX, 0);
 IXGBE_WRITE_REG(hw, IXGBE_IPSTXIDX, 0);


 for (idx = 0; idx < IXGBE_IPSEC_MAX_RX_IP_COUNT; idx++) {
  ixgbe_ipsec_set_tx_sa(hw, idx, buf, 0);
  ixgbe_ipsec_set_rx_sa(hw, idx, 0, buf, 0, 0, 0);
  ixgbe_ipsec_set_rx_ip(hw, idx, (__be32 *)buf);
 }
 for (; idx < IXGBE_IPSEC_MAX_SA_COUNT; idx++) {
  ixgbe_ipsec_set_tx_sa(hw, idx, buf, 0);
  ixgbe_ipsec_set_rx_sa(hw, idx, 0, buf, 0, 0, 0);
 }
}
