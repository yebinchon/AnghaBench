
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AH_WAIT_TIMEOUT ;
 int AR_DIAG_RX_ABORT ;
 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int AR_OBS_BUS_1 ;
 int AR_OBS_BUS_1_RX_STATE ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int ) ;
 int ath_err (int ,char*,int ) ;

bool ath9k_hw_setrxabort(struct ath_hw *ah, bool set)
{
 u32 reg;

 if (set) {
  REG_SET_BIT(ah, AR_DIAG_SW,
       (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));

  if (!ath9k_hw_wait(ah, AR_OBS_BUS_1, AR_OBS_BUS_1_RX_STATE,
       0, AH_WAIT_TIMEOUT)) {
   REG_CLR_BIT(ah, AR_DIAG_SW,
        (AR_DIAG_RX_DIS |
         AR_DIAG_RX_ABORT));

   reg = REG_READ(ah, AR_OBS_BUS_1);
   ath_err(ath9k_hw_common(ah),
    "RX failed to go idle in 10 ms RXSM=0x%x\n",
    reg);

   return 0;
  }
 } else {
  REG_CLR_BIT(ah, AR_DIAG_SW,
       (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));
 }

 return 1;
}
