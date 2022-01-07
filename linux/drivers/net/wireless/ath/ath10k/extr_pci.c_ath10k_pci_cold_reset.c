
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int fw_cold_reset_counter; } ;
struct ath10k {int data_lock; TYPE_1__ stats; } ;


 int ATH10K_DBG_BOOT ;
 int SOC_GLOBAL_RESET_ADDRESS ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_pci_reg_read32 (struct ath10k*,int ) ;
 int ath10k_pci_reg_write32 (struct ath10k*,int ,int) ;
 int msleep (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_pci_cold_reset(struct ath10k *ar)
{
 u32 val;

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot cold reset\n");

 spin_lock_bh(&ar->data_lock);

 ar->stats.fw_cold_reset_counter++;

 spin_unlock_bh(&ar->data_lock);


 val = ath10k_pci_reg_read32(ar, SOC_GLOBAL_RESET_ADDRESS);
 val |= 1;
 ath10k_pci_reg_write32(ar, SOC_GLOBAL_RESET_ADDRESS, val);






 msleep(20);


 val &= ~1;
 ath10k_pci_reg_write32(ar, SOC_GLOBAL_RESET_ADDRESS, val);

 msleep(20);

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot cold reset complete\n");

 return 0;
}
