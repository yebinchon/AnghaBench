
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hw_private_ops {int detect_mac_hang; int init_hang_checks; int init_mode_gain_regs; } ;
struct ath_hw_ops {int config_pci_powersave; } ;
struct TYPE_4__ {int ia_array; } ;
struct TYPE_3__ {int ia_array; } ;
struct ath_hw {TYPE_2__ iniPcieSerdesLowPower; TYPE_1__ iniPcieSerdes; } ;


 scalar_t__ AR_SREV_9003_PCOEM (struct ath_hw*) ;
 int WARN_ON (int) ;
 int ar9003_hw_attach_aic_ops (struct ath_hw*) ;
 int ar9003_hw_attach_calib_ops (struct ath_hw*) ;
 int ar9003_hw_attach_mac_ops (struct ath_hw*) ;
 int ar9003_hw_attach_phy_ops (struct ath_hw*) ;
 int ar9003_hw_configpcipowersave ;
 int ar9003_hw_detect_mac_hang ;
 int ar9003_hw_init_hang_checks ;
 int ar9003_hw_init_mode_gain_regs ;
 int ar9003_hw_init_mode_regs (struct ath_hw*) ;
 struct ath_hw_ops* ath9k_hw_ops (struct ath_hw*) ;
 struct ath_hw_private_ops* ath9k_hw_private_ops (struct ath_hw*) ;

void ar9003_hw_attach_ops(struct ath_hw *ah)
{
 struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
 struct ath_hw_ops *ops = ath9k_hw_ops(ah);

 ar9003_hw_init_mode_regs(ah);

 if (AR_SREV_9003_PCOEM(ah)) {
  WARN_ON(!ah->iniPcieSerdes.ia_array);
  WARN_ON(!ah->iniPcieSerdesLowPower.ia_array);
 }

 priv_ops->init_mode_gain_regs = ar9003_hw_init_mode_gain_regs;
 priv_ops->init_hang_checks = ar9003_hw_init_hang_checks;
 priv_ops->detect_mac_hang = ar9003_hw_detect_mac_hang;

 ops->config_pci_powersave = ar9003_hw_configpcipowersave;

 ar9003_hw_attach_phy_ops(ah);
 ar9003_hw_attach_calib_ops(ah);
 ar9003_hw_attach_mac_ops(ah);
 ar9003_hw_attach_aic_ops(ah);
}
