
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int ah_mibStats; } ;
struct ath_common {int dummy; } ;


 int ANI ;
 int AR_FILT_CCK ;
 int AR_FILT_OFDM ;
 int AR_MIBC ;
 int AR_MIBC_CMC ;
 int AR_MIBC_FMC ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_update_mibstats (struct ath_hw*,int *) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_hw_disable_mib_counters(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);

 ath_dbg(common, ANI, "Disable MIB counters\n");

 REG_WRITE(ah, AR_MIBC, AR_MIBC_FMC);
 ath9k_hw_update_mibstats(ah, &ah->ah_mibStats);
 REG_WRITE(ah, AR_MIBC, AR_MIBC_CMC);
 REG_WRITE(ah, AR_FILT_OFDM, 0);
 REG_WRITE(ah, AR_FILT_CCK, 0);
}
