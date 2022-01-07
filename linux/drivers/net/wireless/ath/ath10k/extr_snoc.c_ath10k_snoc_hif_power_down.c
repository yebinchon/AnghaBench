
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_ce_free_rri (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_snoc_wlan_disable (struct ath10k*) ;

__attribute__((used)) static void ath10k_snoc_hif_power_down(struct ath10k *ar)
{
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot hif power down\n");

 ath10k_snoc_wlan_disable(ar);
 ath10k_ce_free_rri(ar);
}
