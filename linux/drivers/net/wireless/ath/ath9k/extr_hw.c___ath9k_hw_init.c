
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int macVersion; void* phyRev; int macRev; } ;
struct ath_hw {int WARegVal; int is_pciexpress; TYPE_1__ hw_version; } ;
struct ath_common {int state; } ;


 int AR_PHY_CHIP_ID ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9330 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int AR_WA ;
 int AR_WA_ASPM_TIMER_BASED_DISABLE ;
 int AR_WA_BIT22 ;
 int AR_WA_D3_L1_DISABLE ;
 int ATH9K_PM_AWAKE ;
 int ATH9K_RESET_POWER_ON ;
 int ATH_HW_INITIALIZED ;
 int EIO ;
 int EOPNOTSUPP ;
 void* REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_attach_ops (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_disablepcie (struct ath_hw*) ;
 int ath9k_hw_fill_cap_info (struct ath_hw*) ;
 int ath9k_hw_init_cal_settings (struct ath_hw*) ;
 int ath9k_hw_init_config (struct ath_hw*) ;
 int ath9k_hw_init_defaults (struct ath_hw*) ;
 int ath9k_hw_init_hang_checks (struct ath_hw*) ;
 int ath9k_hw_init_macaddr (struct ath_hw*) ;
 int ath9k_hw_init_mode_gain_regs (struct ath_hw*) ;
 int ath9k_hw_post_init (struct ath_hw*) ;
 int ath9k_hw_read_revisions (struct ath_hw*) ;
 int ath9k_hw_set_reset_reg (struct ath_hw*,int ) ;
 int ath9k_hw_setpower (struct ath_hw*,int ) ;
 int ath_err (struct ath_common*,char*,...) ;

__attribute__((used)) static int __ath9k_hw_init(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int r = 0;

 if (!ath9k_hw_read_revisions(ah)) {
  ath_err(common, "Could not read hardware revisions");
  return -EOPNOTSUPP;
 }

 switch (ah->hw_version.macVersion) {
 case 144:
 case 143:
 case 141:
 case 142:
 case 139:
 case 138:
 case 137:
 case 140:
 case 136:
 case 135:
 case 132:
 case 134:
 case 133:
 case 130:
 case 128:
 case 131:
 case 129:
  break;
 default:
  ath_err(common,
   "Mac Chip Rev 0x%02x.%x is not supported by this driver\n",
   ah->hw_version.macVersion, ah->hw_version.macRev);
  return -EOPNOTSUPP;
 }






 if (AR_SREV_9300_20_OR_LATER(ah)) {
  ah->WARegVal = REG_READ(ah, AR_WA);
  ah->WARegVal |= (AR_WA_D3_L1_DISABLE |
     AR_WA_ASPM_TIMER_BASED_DISABLE);
 }

 if (!ath9k_hw_set_reset_reg(ah, ATH9K_RESET_POWER_ON)) {
  ath_err(common, "Couldn't reset chip\n");
  return -EIO;
 }

 if (AR_SREV_9565(ah)) {
  ah->WARegVal |= AR_WA_BIT22;
  REG_WRITE(ah, AR_WA, ah->WARegVal);
 }

 ath9k_hw_init_defaults(ah);
 ath9k_hw_init_config(ah);

 r = ath9k_hw_attach_ops(ah);
 if (r)
  return r;

 if (!ath9k_hw_setpower(ah, ATH9K_PM_AWAKE)) {
  ath_err(common, "Couldn't wakeup chip\n");
  return -EIO;
 }

 if (AR_SREV_9271(ah) || AR_SREV_9100(ah) || AR_SREV_9340(ah) ||
     AR_SREV_9330(ah) || AR_SREV_9550(ah))
  ah->is_pciexpress = 0;

 ah->hw_version.phyRev = REG_READ(ah, AR_PHY_CHIP_ID);
 ath9k_hw_init_cal_settings(ah);

 if (!ah->is_pciexpress)
  ath9k_hw_disablepcie(ah);

 r = ath9k_hw_post_init(ah);
 if (r)
  return r;

 ath9k_hw_init_mode_gain_regs(ah);
 r = ath9k_hw_fill_cap_info(ah);
 if (r)
  return r;

 ath9k_hw_init_macaddr(ah);
 ath9k_hw_init_hang_checks(ah);

 common->state = ATH_HW_INITIALIZED;

 return 0;
}
