
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int (* external_reset ) () ;} ;


 int AR_NUM_QCU ;
 int AR_RTC_RESET ;
 int ATH9K_RESET_COLD ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int RESET ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_numtxpending (struct ath_hw*,int) ;
 int ath_dbg (int ,int ,char*) ;
 int ath_err (int ,char*,int) ;
 int stub1 () ;

__attribute__((used)) static bool ath9k_hw_ar9330_reset_war(struct ath_hw *ah, int type)
{
 int i, npend = 0;

 for (i = 0; i < AR_NUM_QCU; i++) {
  npend = ath9k_hw_numtxpending(ah, i);
  if (npend)
   break;
 }

 if (ah->external_reset &&
     (npend || type == ATH9K_RESET_COLD)) {
  int reset_err = 0;

  ath_dbg(ath9k_hw_common(ah), RESET,
   "reset MAC via external reset\n");

  reset_err = ah->external_reset();
  if (reset_err) {
   ath_err(ath9k_hw_common(ah),
    "External reset failed, err=%d\n",
    reset_err);
   return 0;
  }

  REG_WRITE(ah, AR_RTC_RESET, 1);
 }

 return 1;
}
