
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; int* rss_key; int* rss_indir_tbl; struct ixgbe_hw hw; } ;


 int IXGBEVF_VFRSSRK_REGS ;
 int IXGBEVF_X550_VFRETA_SIZE ;
 int IXGBE_VFMRQC ;
 int IXGBE_VFMRQC_RSSEN ;
 int IXGBE_VFMRQC_RSS_FIELD_IPV4 ;
 int IXGBE_VFMRQC_RSS_FIELD_IPV4_TCP ;
 int IXGBE_VFMRQC_RSS_FIELD_IPV6 ;
 int IXGBE_VFMRQC_RSS_FIELD_IPV6_TCP ;
 int IXGBE_VFRETA (int) ;
 int IXGBE_VFRSSRK (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbevf_setup_vfmrqc(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 vfmrqc = 0, vfreta = 0;
 u16 rss_i = adapter->num_rx_queues;
 u8 i, j;


 for (i = 0; i < IXGBEVF_VFRSSRK_REGS; i++)
  IXGBE_WRITE_REG(hw, IXGBE_VFRSSRK(i), *(adapter->rss_key + i));

 for (i = 0, j = 0; i < IXGBEVF_X550_VFRETA_SIZE; i++, j++) {
  if (j == rss_i)
   j = 0;

  adapter->rss_indir_tbl[i] = j;

  vfreta |= j << (i & 0x3) * 8;
  if ((i & 3) == 3) {
   IXGBE_WRITE_REG(hw, IXGBE_VFRETA(i >> 2), vfreta);
   vfreta = 0;
  }
 }


 vfmrqc |= IXGBE_VFMRQC_RSS_FIELD_IPV4 |
  IXGBE_VFMRQC_RSS_FIELD_IPV4_TCP |
  IXGBE_VFMRQC_RSS_FIELD_IPV6 |
  IXGBE_VFMRQC_RSS_FIELD_IPV6_TCP;

 vfmrqc |= IXGBE_VFMRQC_RSSEN;

 IXGBE_WRITE_REG(hw, IXGBE_VFMRQC, vfmrqc);
}
