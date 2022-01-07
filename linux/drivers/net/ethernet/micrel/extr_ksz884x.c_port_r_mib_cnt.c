
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
 int MIB_COUNTER_OVERFLOW ;
 int MIB_COUNTER_VALID ;
 int MIB_COUNTER_VALUE ;
 int PORT_COUNTER_NUM ;
 int TABLE_MIB ;
 int TABLE_READ ;
 int TABLE_SEL_SHIFT ;
 int hw_block_intr (struct ksz_hw*) ;
 int hw_restore_intr (struct ksz_hw*,int ) ;
 int readl (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void port_r_mib_cnt(struct ksz_hw *hw, int port, u16 addr, u64 *cnt)
{
 u32 data;
 u16 ctrl_addr;
 uint interrupt;
 int timeout;

 ctrl_addr = addr + PORT_COUNTER_NUM * port;

 interrupt = hw_block_intr(hw);

 ctrl_addr |= (((TABLE_MIB << TABLE_SEL_SHIFT) | TABLE_READ) << 8);
 writew(ctrl_addr, hw->io + KS884X_IACR_OFFSET);
 HW_DELAY(hw, KS884X_IACR_OFFSET);

 for (timeout = 100; timeout > 0; timeout--) {
  data = readl(hw->io + KS884X_ACC_DATA_0_OFFSET);

  if (data & MIB_COUNTER_VALID) {
   if (data & MIB_COUNTER_OVERFLOW)
    *cnt += MIB_COUNTER_VALUE + 1;
   *cnt += data & MIB_COUNTER_VALUE;
   break;
  }
 }

 hw_restore_intr(hw, interrupt);
}
