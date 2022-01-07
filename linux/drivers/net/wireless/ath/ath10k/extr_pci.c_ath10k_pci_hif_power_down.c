
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;

void ath10k_pci_hif_power_down(struct ath10k *ar)
{
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot hif power down\n");




}
