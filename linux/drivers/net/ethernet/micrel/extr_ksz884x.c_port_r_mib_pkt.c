
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 int HW_DELAY (struct ksz_hw*,scalar_t__) ;
 scalar_t__ KS884X_ACC_DATA_0_OFFSET ;
 scalar_t__ KS884X_IACR_OFFSET ;
 int KS_MIB_PACKET_DROPPED_RX_0 ;
 int KS_MIB_PACKET_DROPPED_TX ;
 int KS_MIB_PACKET_DROPPED_TX_0 ;
 int MIB_PACKET_DROPPED ;
 int TABLE_MIB ;
 int TABLE_READ ;
 int TABLE_SEL_SHIFT ;
 int hw_block_intr (struct ksz_hw*) ;
 int hw_restore_intr (struct ksz_hw*,int ) ;
 int readl (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void port_r_mib_pkt(struct ksz_hw *hw, int port, u32 *last, u64 *cnt)
{
 u32 cur;
 u32 data;
 u16 ctrl_addr;
 uint interrupt;
 int index;

 index = KS_MIB_PACKET_DROPPED_RX_0 + port;
 do {
  interrupt = hw_block_intr(hw);

  ctrl_addr = (u16) index;
  ctrl_addr |= (((TABLE_MIB << TABLE_SEL_SHIFT) | TABLE_READ)
   << 8);
  writew(ctrl_addr, hw->io + KS884X_IACR_OFFSET);
  HW_DELAY(hw, KS884X_IACR_OFFSET);
  data = readl(hw->io + KS884X_ACC_DATA_0_OFFSET);

  hw_restore_intr(hw, interrupt);

  data &= MIB_PACKET_DROPPED;
  cur = *last;
  if (data != cur) {
   *last = data;
   if (data < cur)
    data += MIB_PACKET_DROPPED + 1;
   data -= cur;
   *cnt += data;
  }
  ++last;
  ++cnt;
  index -= KS_MIB_PACKET_DROPPED_TX -
   KS_MIB_PACKET_DROPPED_TX_0 + 1;
 } while (index >= KS_MIB_PACKET_DROPPED_TX_0 + port);
}
