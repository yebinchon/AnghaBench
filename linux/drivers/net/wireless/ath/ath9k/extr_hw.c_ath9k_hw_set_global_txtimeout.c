
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int globaltxtimeout; } ;


 int AR_GTXTO ;
 int AR_GTXTO_TIMEOUT_LIMIT ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int XMIT ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int) ;

__attribute__((used)) static bool ath9k_hw_set_global_txtimeout(struct ath_hw *ah, u32 tu)
{
 if (tu > 0xFFFF) {
  ath_dbg(ath9k_hw_common(ah), XMIT, "bad global tx timeout %u\n",
   tu);
  ah->globaltxtimeout = (u32) -1;
  return 0;
 } else {
  REG_RMW_FIELD(ah, AR_GTXTO, AR_GTXTO_TIMEOUT_LIMIT, tu);
  ah->globaltxtimeout = tu;
  return 1;
 }
}
