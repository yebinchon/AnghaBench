
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
 int AR_MIBC_COW ;
 int AR_MIBC_FMC ;
 int AR_MIBC_MCS ;
 int AR_PHY_ERR_CCK_TIMING ;
 int AR_PHY_ERR_MASK_1 ;
 int AR_PHY_ERR_MASK_2 ;
 int AR_PHY_ERR_OFDM_TIMING ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_update_mibstats (struct ath_hw*,int *) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_enable_mib_counters(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);

 ath_dbg(common, ANI, "Enable MIB counters\n");

 ath9k_hw_update_mibstats(ah, &ah->ah_mibStats);

 ENABLE_REGWRITE_BUFFER(ah);

 REG_WRITE(ah, AR_FILT_OFDM, 0);
 REG_WRITE(ah, AR_FILT_CCK, 0);
 REG_WRITE(ah, AR_MIBC,
    ~(AR_MIBC_COW | AR_MIBC_FMC | AR_MIBC_CMC | AR_MIBC_MCS)
    & 0x0f);
 REG_WRITE(ah, AR_PHY_ERR_MASK_1, AR_PHY_ERR_OFDM_TIMING);
 REG_WRITE(ah, AR_PHY_ERR_MASK_2, AR_PHY_ERR_CCK_TIMING);

 REGWRITE_BUFFER_FLUSH(ah);
}
