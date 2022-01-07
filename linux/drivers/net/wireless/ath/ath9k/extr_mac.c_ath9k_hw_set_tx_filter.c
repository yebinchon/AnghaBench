
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_D_TXBLK_BASE ;
 int AR_D_TXBLK_WRITE_COMMAND ;
 int AR_D_TXBLK_WRITE_DCU ;
 int AR_D_TXBLK_WRITE_SLICE ;
 int ATH9K_HW_BIT_IN_SLICE ;
 int ATH9K_HW_SLICE_PER_DCU ;
 int BIT (int) ;
 int PS ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int SM (int,int ) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int,int,int,int ) ;

void ath9k_hw_set_tx_filter(struct ath_hw *ah, u8 destidx, bool set)
{
 int dcu_idx;
 u32 filter;

 for (dcu_idx = 0; dcu_idx < 10; dcu_idx++) {
  filter = SM(set, AR_D_TXBLK_WRITE_COMMAND);
  filter |= SM(dcu_idx, AR_D_TXBLK_WRITE_DCU);
  filter |= SM((destidx / ATH9K_HW_SLICE_PER_DCU),
        AR_D_TXBLK_WRITE_SLICE);
  filter |= BIT(destidx % ATH9K_HW_BIT_IN_SLICE);
  ath_dbg(ath9k_hw_common(ah), PS,
   "DCU%d staid %d set %d txfilter %08x\n",
   dcu_idx, destidx, set, filter);
  REG_WRITE(ah, AR_D_TXBLK_BASE, filter);
 }
}
