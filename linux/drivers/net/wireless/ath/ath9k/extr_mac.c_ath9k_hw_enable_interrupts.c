
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int imask; int intr_ref_cnt; } ;
struct ath_common {int dummy; } ;


 int ATH9K_INT_GLOBAL ;
 int INTERRUPT ;
 int __ath9k_hw_enable_interrupts (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ) ;
 int atomic_inc_and_test (int *) ;
 int atomic_read (int *) ;

void ath9k_hw_enable_interrupts(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);

 if (!(ah->imask & ATH9K_INT_GLOBAL))
  return;

 if (!atomic_inc_and_test(&ah->intr_ref_cnt)) {
  ath_dbg(common, INTERRUPT, "Do not enable IER ref count %d\n",
   atomic_read(&ah->intr_ref_cnt));
  return;
 }

 __ath9k_hw_enable_interrupts(ah);
}
