
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int AR_NAV ;
 int BSTUCK ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;

void ath9k_hw_check_nav(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 u32 val;

 val = REG_READ(ah, AR_NAV);
 if (val != 0xdeadbeef && val > 0x7fff) {
  ath_dbg(common, BSTUCK, "Abnormal NAV: 0x%x\n", val);
  REG_WRITE(ah, AR_NAV, 0);
 }
}
