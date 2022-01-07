
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int hw_tcs; int flags; int flags2; int num_rx_pools; TYPE_1__* ring_feature; struct ixgbe_hw hw; } ;
struct TYPE_3__ {scalar_t__ mask; } ;


 scalar_t__ IXGBE_82599_VMDQ_4Q_MASK ;
 int IXGBE_FLAG2_RSS_FIELD_IPV4_UDP ;
 int IXGBE_FLAG2_RSS_FIELD_IPV6_UDP ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_MRQC ;
 int IXGBE_MRQC_L3L4TXSWEN ;
 int IXGBE_MRQC_MULTIPLE_RSS ;
 int IXGBE_MRQC_RSSEN ;
 int IXGBE_MRQC_RSS_FIELD_IPV4 ;
 int IXGBE_MRQC_RSS_FIELD_IPV4_TCP ;
 int IXGBE_MRQC_RSS_FIELD_IPV4_UDP ;
 int IXGBE_MRQC_RSS_FIELD_IPV6 ;
 int IXGBE_MRQC_RSS_FIELD_IPV6_TCP ;
 int IXGBE_MRQC_RSS_FIELD_IPV6_UDP ;
 int IXGBE_MRQC_RTRSS4TCEN ;
 int IXGBE_MRQC_RTRSS8TCEN ;
 int IXGBE_MRQC_VMDQRSS32EN ;
 int IXGBE_MRQC_VMDQRSS64EN ;
 int IXGBE_MRQC_VMDQRT4TCEN ;
 int IXGBE_MRQC_VMDQRT8TCEN ;
 int IXGBE_PFVFMRQC (int ) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXCSUM ;
 int IXGBE_RXCSUM_PCSD ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t RING_F_RSS ;
 size_t RING_F_VMDQ ;
 int VMDQ_P (int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 scalar_t__ ixgbe_mac_X550 ;
 int ixgbe_setup_reta (struct ixgbe_adapter*) ;
 int ixgbe_setup_vfreta (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_setup_mrqc(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 mrqc = 0, rss_field = 0, vfmrqc = 0;
 u32 rxcsum;


 rxcsum = IXGBE_READ_REG(hw, IXGBE_RXCSUM);
 rxcsum |= IXGBE_RXCSUM_PCSD;
 IXGBE_WRITE_REG(hw, IXGBE_RXCSUM, rxcsum);

 if (adapter->hw.mac.type == ixgbe_mac_82598EB) {
  if (adapter->ring_feature[RING_F_RSS].mask)
   mrqc = IXGBE_MRQC_RSSEN;
 } else {
  u8 tcs = adapter->hw_tcs;

  if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) {
   if (tcs > 4)
    mrqc = IXGBE_MRQC_VMDQRT8TCEN;
   else if (tcs > 1)
    mrqc = IXGBE_MRQC_VMDQRT4TCEN;
   else if (adapter->ring_feature[RING_F_VMDQ].mask ==
     IXGBE_82599_VMDQ_4Q_MASK)
    mrqc = IXGBE_MRQC_VMDQRSS32EN;
   else
    mrqc = IXGBE_MRQC_VMDQRSS64EN;




   if (hw->mac.type >= ixgbe_mac_X550)
    mrqc |= IXGBE_MRQC_L3L4TXSWEN;
  } else {
   if (tcs > 4)
    mrqc = IXGBE_MRQC_RTRSS8TCEN;
   else if (tcs > 1)
    mrqc = IXGBE_MRQC_RTRSS4TCEN;
   else
    mrqc = IXGBE_MRQC_RSSEN;
  }
 }


 rss_field |= IXGBE_MRQC_RSS_FIELD_IPV4 |
       IXGBE_MRQC_RSS_FIELD_IPV4_TCP |
       IXGBE_MRQC_RSS_FIELD_IPV6 |
       IXGBE_MRQC_RSS_FIELD_IPV6_TCP;

 if (adapter->flags2 & IXGBE_FLAG2_RSS_FIELD_IPV4_UDP)
  rss_field |= IXGBE_MRQC_RSS_FIELD_IPV4_UDP;
 if (adapter->flags2 & IXGBE_FLAG2_RSS_FIELD_IPV6_UDP)
  rss_field |= IXGBE_MRQC_RSS_FIELD_IPV6_UDP;

 if ((hw->mac.type >= ixgbe_mac_X550) &&
     (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)) {
  u16 pool = adapter->num_rx_pools;


  mrqc |= IXGBE_MRQC_MULTIPLE_RSS;
  IXGBE_WRITE_REG(hw, IXGBE_MRQC, mrqc);


  ixgbe_setup_vfreta(adapter);
  vfmrqc = IXGBE_MRQC_RSSEN;
  vfmrqc |= rss_field;

  while (pool--)
   IXGBE_WRITE_REG(hw,
     IXGBE_PFVFMRQC(VMDQ_P(pool)),
     vfmrqc);
 } else {
  ixgbe_setup_reta(adapter);
  mrqc |= rss_field;
  IXGBE_WRITE_REG(hw, IXGBE_MRQC, mrqc);
 }
}
