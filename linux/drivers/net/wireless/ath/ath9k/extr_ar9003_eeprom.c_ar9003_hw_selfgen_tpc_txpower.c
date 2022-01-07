
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 size_t ALL_TARGET_LEGACY_1L_5L ;
 size_t ALL_TARGET_LEGACY_6_24 ;
 int AR_TPC ;
 int AR_TPC_ACK ;
 int AR_TPC_CHIRP ;
 int AR_TPC_CTS ;
 int AR_TPC_RPT ;
 scalar_t__ IS_CHAN_2GHZ (struct ath9k_channel*) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int SM (int,int ) ;

__attribute__((used)) static void ar9003_hw_selfgen_tpc_txpower(struct ath_hw *ah,
       struct ath9k_channel *chan,
       u8 *pwr_array)
{
 u32 val;


 if (IS_CHAN_2GHZ(chan)) {
  val = SM(pwr_array[ALL_TARGET_LEGACY_1L_5L], AR_TPC_ACK) |
        SM(pwr_array[ALL_TARGET_LEGACY_1L_5L], AR_TPC_CTS) |
        SM(0x3f, AR_TPC_CHIRP) | SM(0x3f, AR_TPC_RPT);
 } else {
  val = SM(pwr_array[ALL_TARGET_LEGACY_6_24], AR_TPC_ACK) |
        SM(pwr_array[ALL_TARGET_LEGACY_6_24], AR_TPC_CTS) |
        SM(0x3f, AR_TPC_CHIRP) | SM(0x3f, AR_TPC_RPT);
 }
 REG_WRITE(ah, AR_TPC, val);
}
