
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_BOOT ;
 int ATH10K_PCI_NUM_WARM_RESET_ATTEMPTS ;
 scalar_t__ ATH10K_PCI_RESET_WARM_ONLY ;
 int EPERM ;
 int QCA988X_HOST_INTEREST_ADDRESS ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_pci_cold_reset (struct ath10k*) ;
 int ath10k_pci_diag_read32 (struct ath10k*,int ,int *) ;
 int ath10k_pci_init_pipes (struct ath10k*) ;
 scalar_t__ ath10k_pci_reset_mode ;
 int ath10k_pci_wait_for_target_init (struct ath10k*) ;
 int ath10k_pci_warm_reset (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,...) ;

__attribute__((used)) static int ath10k_pci_qca988x_chip_reset(struct ath10k *ar)
{
 int i, ret;
 u32 val;

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot 988x chip reset\n");
 for (i = 0; i < ATH10K_PCI_NUM_WARM_RESET_ATTEMPTS; i++) {
  ret = ath10k_pci_warm_reset(ar);
  if (ret) {
   ath10k_warn(ar, "failed to warm reset attempt %d of %d: %d\n",
        i + 1, ATH10K_PCI_NUM_WARM_RESET_ATTEMPTS,
        ret);
   continue;
  }
  ret = ath10k_pci_init_pipes(ar);
  if (ret) {
   ath10k_warn(ar, "failed to init copy engine: %d\n",
        ret);
   continue;
  }

  ret = ath10k_pci_diag_read32(ar, QCA988X_HOST_INTEREST_ADDRESS,
          &val);
  if (ret) {
   ath10k_warn(ar, "failed to poke copy engine: %d\n",
        ret);
   continue;
  }

  ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot chip reset complete (warm)\n");
  return 0;
 }

 if (ath10k_pci_reset_mode == ATH10K_PCI_RESET_WARM_ONLY) {
  ath10k_warn(ar, "refusing cold reset as requested\n");
  return -EPERM;
 }

 ret = ath10k_pci_cold_reset(ar);
 if (ret) {
  ath10k_warn(ar, "failed to cold reset: %d\n", ret);
  return ret;
 }

 ret = ath10k_pci_wait_for_target_init(ar);
 if (ret) {
  ath10k_warn(ar, "failed to wait for target after cold reset: %d\n",
       ret);
  return ret;
 }

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot qca988x chip reset complete (cold)\n");

 return 0;
}
