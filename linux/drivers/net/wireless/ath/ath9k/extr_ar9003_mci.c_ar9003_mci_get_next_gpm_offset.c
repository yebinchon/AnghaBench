
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath9k_hw_mci {int gpm_len; int gpm_idx; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int AR_MCI_GPM_1 ;
 int AR_MCI_GPM_WRITE_PTR ;
 int AR_MCI_INTERRUPT_RX_MSG_GPM ;
 int AR_MCI_INTERRUPT_RX_MSG_RAW ;
 int MCI_GPM_INVALID ;
 int MCI_GPM_MORE ;
 int MCI_GPM_NOMORE ;
 int MS (int ,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 scalar_t__ ar9003_mci_is_gpm_valid (struct ath_hw*,int) ;

u32 ar9003_mci_get_next_gpm_offset(struct ath_hw *ah, u32 *more)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 offset, more_gpm = 0, gpm_ptr;
 REG_WRITE(ah, AR_MCI_INTERRUPT_RX_MSG_RAW,
   AR_MCI_INTERRUPT_RX_MSG_GPM);

 gpm_ptr = MS(REG_READ(ah, AR_MCI_GPM_1), AR_MCI_GPM_WRITE_PTR);
 offset = gpm_ptr;

 if (!offset)
  offset = mci->gpm_len - 1;
 else if (offset >= mci->gpm_len) {
  if (offset != 0xFFFF)
   offset = 0;
 } else {
  offset--;
 }

 if ((offset == 0xFFFF) || (gpm_ptr == mci->gpm_idx)) {
  offset = MCI_GPM_INVALID;
  more_gpm = MCI_GPM_NOMORE;
  goto out;
 }
 for (;;) {
  u32 temp_index;



  if (offset != mci->gpm_idx)
   more_gpm = MCI_GPM_MORE;
  else
   more_gpm = MCI_GPM_NOMORE;

  temp_index = mci->gpm_idx;

  if (temp_index >= mci->gpm_len)
   temp_index = 0;

  mci->gpm_idx++;

  if (mci->gpm_idx >= mci->gpm_len)
   mci->gpm_idx = 0;

  if (ar9003_mci_is_gpm_valid(ah, temp_index)) {
   offset = temp_index;
   break;
  }

  if (more_gpm == MCI_GPM_NOMORE) {
   offset = MCI_GPM_INVALID;
   break;
  }
 }

 if (offset != MCI_GPM_INVALID)
  offset <<= 4;
out:
 if (more)
  *more = more_gpm;

 return offset;
}
