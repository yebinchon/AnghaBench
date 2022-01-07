
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {size_t* rss_indir_tbl; struct ixgbe_hw hw; } ;


 int IXGBE_ERETA (size_t) ;
 int IXGBE_RETA (size_t) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,size_t) ;
 scalar_t__ ixgbe_mac_82598EB ;
 size_t ixgbe_rss_indir_tbl_entries (struct ixgbe_adapter*) ;

void ixgbe_store_reta(struct ixgbe_adapter *adapter)
{
 u32 i, reta_entries = ixgbe_rss_indir_tbl_entries(adapter);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 reta = 0;
 u32 indices_multi;
 u8 *indir_tbl = adapter->rss_indir_tbl;







 if (adapter->hw.mac.type == ixgbe_mac_82598EB)
  indices_multi = 0x11;
 else
  indices_multi = 0x1;


 for (i = 0; i < reta_entries; i++) {
  reta |= indices_multi * indir_tbl[i] << (i & 0x3) * 8;
  if ((i & 3) == 3) {
   if (i < 128)
    IXGBE_WRITE_REG(hw, IXGBE_RETA(i >> 2), reta);
   else
    IXGBE_WRITE_REG(hw, IXGBE_ERETA((i >> 2) - 32),
      reta);
   reta = 0;
  }
 }
}
