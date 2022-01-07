
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ath_common {int curaid; scalar_t__ curbssid; } ;
struct ath5k_hw {scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5212 ;
 int AR5K_BEACON ;
 int AR5K_BEACON_TIM ;
 int AR5K_BSS_ID0 ;
 int AR5K_BSS_ID1 ;
 int AR5K_BSS_ID1_AID_S ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,scalar_t__) ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ath5k_hw_disable_pspoll (struct ath5k_hw*) ;
 int ath5k_hw_enable_pspoll (struct ath5k_hw*,int *,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int ath_hw_setbssidmask (struct ath_common*) ;
 int get_unaligned_le16 (scalar_t__) ;
 int get_unaligned_le32 (scalar_t__) ;

void
ath5k_hw_set_bssid(struct ath5k_hw *ah)
{
 struct ath_common *common = ath5k_hw_common(ah);
 u16 tim_offset = 0;




 if (ah->ah_version == AR5K_AR5212)
  ath_hw_setbssidmask(common);




 ath5k_hw_reg_write(ah,
      get_unaligned_le32(common->curbssid),
      AR5K_BSS_ID0);
 ath5k_hw_reg_write(ah,
      get_unaligned_le16(common->curbssid + 4) |
      ((common->curaid & 0x3fff) << AR5K_BSS_ID1_AID_S),
      AR5K_BSS_ID1);

 if (common->curaid == 0) {
  ath5k_hw_disable_pspoll(ah);
  return;
 }

 AR5K_REG_WRITE_BITS(ah, AR5K_BEACON, AR5K_BEACON_TIM,
       tim_offset ? tim_offset + 4 : 0);

 ath5k_hw_enable_pspoll(ah, ((void*)0), 0);
}
