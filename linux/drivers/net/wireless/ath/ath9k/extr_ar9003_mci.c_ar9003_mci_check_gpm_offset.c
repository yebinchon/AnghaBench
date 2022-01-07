
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath9k_hw_mci {scalar_t__ gpm_idx; int query_bt; int need_flush_btinfo; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;
struct ath_common {int dummy; } ;


 int AR_MCI_GPM_1 ;
 int AR_MCI_GPM_WRITE_PTR ;
 int MCI ;
 scalar_t__ MS (int ,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,scalar_t__,scalar_t__) ;

void ar9003_mci_check_gpm_offset(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 offset;




 offset = MS(REG_READ(ah, AR_MCI_GPM_1), AR_MCI_GPM_WRITE_PTR);
 if (mci->gpm_idx == offset)
  return;
 ath_dbg(common, MCI, "GPM cached write pointer mismatch %d %d\n",
  mci->gpm_idx, offset);
 mci->query_bt = 1;
 mci->need_flush_btinfo = 1;
 mci->gpm_idx = 0;
}
