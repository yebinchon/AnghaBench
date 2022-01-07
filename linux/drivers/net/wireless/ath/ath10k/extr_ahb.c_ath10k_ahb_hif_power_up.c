
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;
typedef enum ath10k_firmware_mode { ____Placeholder_ath10k_firmware_mode } ath10k_firmware_mode ;


 int ATH10K_DBG_BOOT ;
 int ath10k_ahb_chip_reset (struct ath10k*) ;
 int ath10k_ahb_wake_target_cpu (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_pci_ce_deinit (struct ath10k*) ;
 int ath10k_pci_init_config (struct ath10k*) ;
 int ath10k_pci_init_pipes (struct ath10k*) ;

__attribute__((used)) static int ath10k_ahb_hif_power_up(struct ath10k *ar,
       enum ath10k_firmware_mode fw_mode)
{
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot ahb hif power up\n");

 ret = ath10k_ahb_chip_reset(ar);
 if (ret) {
  ath10k_err(ar, "failed to reset chip: %d\n", ret);
  goto out;
 }

 ret = ath10k_pci_init_pipes(ar);
 if (ret) {
  ath10k_err(ar, "failed to initialize CE: %d\n", ret);
  goto out;
 }

 ret = ath10k_pci_init_config(ar);
 if (ret) {
  ath10k_err(ar, "failed to setup init config: %d\n", ret);
  goto err_ce_deinit;
 }

 ret = ath10k_ahb_wake_target_cpu(ar);
 if (ret) {
  ath10k_err(ar, "could not wake up target CPU: %d\n", ret);
  goto err_ce_deinit;
 }

 return 0;

err_ce_deinit:
 ath10k_pci_ce_deinit(ar);
out:
 return ret;
}
