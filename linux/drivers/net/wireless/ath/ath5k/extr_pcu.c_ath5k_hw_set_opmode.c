
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_common {scalar_t__ macaddr; } ;
struct ath5k_hw {scalar_t__ ah_version; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_BCR ;
 int AR5K_BCR_ADHOC ;
 int AR5K_BCR_AP ;
 int AR5K_CFG ;
 int AR5K_CFG_IBSS ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_STA_ID0 ;
 int AR5K_STA_ID1 ;
 int AR5K_STA_ID1_ADHOC ;
 int AR5K_STA_ID1_AP ;
 int AR5K_STA_ID1_KEYSRCH_MODE ;
 int AR5K_STA_ID1_NO_PSPOLL ;
 int AR5K_STA_ID1_PWR_SV ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*,int) ;
 int ATH5K_DEBUG_MODE ;
 int EINVAL ;





 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int get_unaligned_le16 (scalar_t__) ;
 int get_unaligned_le32 (scalar_t__) ;

int
ath5k_hw_set_opmode(struct ath5k_hw *ah, enum nl80211_iftype op_mode)
{
 struct ath_common *common = ath5k_hw_common(ah);
 u32 pcu_reg, beacon_reg, low_id, high_id;

 ATH5K_DBG(ah, ATH5K_DEBUG_MODE, "mode %d\n", op_mode);


 pcu_reg = ath5k_hw_reg_read(ah, AR5K_STA_ID1) & 0xffff0000;
 pcu_reg &= ~(AR5K_STA_ID1_ADHOC | AR5K_STA_ID1_AP
   | AR5K_STA_ID1_KEYSRCH_MODE
   | (ah->ah_version == AR5K_AR5210 ?
   (AR5K_STA_ID1_PWR_SV | AR5K_STA_ID1_NO_PSPOLL) : 0));

 beacon_reg = 0;

 switch (op_mode) {
 case 132:
  pcu_reg |= AR5K_STA_ID1_ADHOC | AR5K_STA_ID1_KEYSRCH_MODE;
  beacon_reg |= AR5K_BCR_ADHOC;
  if (ah->ah_version == AR5K_AR5210)
   pcu_reg |= AR5K_STA_ID1_NO_PSPOLL;
  else
   AR5K_REG_ENABLE_BITS(ah, AR5K_CFG, AR5K_CFG_IBSS);
  break;

 case 131:
 case 130:
  pcu_reg |= AR5K_STA_ID1_AP | AR5K_STA_ID1_KEYSRCH_MODE;
  beacon_reg |= AR5K_BCR_AP;
  if (ah->ah_version == AR5K_AR5210)
   pcu_reg |= AR5K_STA_ID1_NO_PSPOLL;
  else
   AR5K_REG_DISABLE_BITS(ah, AR5K_CFG, AR5K_CFG_IBSS);
  break;

 case 128:
  pcu_reg |= AR5K_STA_ID1_KEYSRCH_MODE
   | (ah->ah_version == AR5K_AR5210 ?
    AR5K_STA_ID1_PWR_SV : 0);

 case 129:
  pcu_reg |= AR5K_STA_ID1_KEYSRCH_MODE
   | (ah->ah_version == AR5K_AR5210 ?
    AR5K_STA_ID1_NO_PSPOLL : 0);
  break;

 default:
  return -EINVAL;
 }




 low_id = get_unaligned_le32(common->macaddr);
 high_id = get_unaligned_le16(common->macaddr + 4);
 ath5k_hw_reg_write(ah, low_id, AR5K_STA_ID0);
 ath5k_hw_reg_write(ah, pcu_reg | high_id, AR5K_STA_ID1);




 if (ah->ah_version == AR5K_AR5210)
  ath5k_hw_reg_write(ah, beacon_reg, AR5K_BCR);

 return 0;
}
