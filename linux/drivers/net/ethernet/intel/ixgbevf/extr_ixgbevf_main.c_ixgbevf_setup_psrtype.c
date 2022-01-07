
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; struct ixgbe_hw hw; } ;


 int BIT (int) ;
 int IXGBE_PSRTYPE_IPV4HDR ;
 int IXGBE_PSRTYPE_IPV6HDR ;
 int IXGBE_PSRTYPE_L2HDR ;
 int IXGBE_PSRTYPE_TCPHDR ;
 int IXGBE_PSRTYPE_UDPHDR ;
 int IXGBE_VFPSRTYPE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbevf_setup_psrtype(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;


 u32 psrtype = IXGBE_PSRTYPE_TCPHDR | IXGBE_PSRTYPE_UDPHDR |
        IXGBE_PSRTYPE_IPV4HDR | IXGBE_PSRTYPE_IPV6HDR |
        IXGBE_PSRTYPE_L2HDR;

 if (adapter->num_rx_queues > 1)
  psrtype |= BIT(29);

 IXGBE_WRITE_REG(hw, IXGBE_VFPSRTYPE, psrtype);
}
