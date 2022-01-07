
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int src_nentries; } ;


 int ATH10K_DBG_PCI ;
 int ath10k_ce_per_engine_service (struct ath10k*,size_t) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_pci_hif_get_free_queue_number (struct ath10k*,size_t) ;
 TYPE_1__* host_ce_config_wlan ;

void ath10k_pci_hif_send_complete_check(struct ath10k *ar, u8 pipe,
     int force)
{
 ath10k_dbg(ar, ATH10K_DBG_PCI, "pci hif send complete check\n");

 if (!force) {
  int resources;







  resources = ath10k_pci_hif_get_free_queue_number(ar, pipe);





  if (resources > (host_ce_config_wlan[pipe].src_nentries >> 1))
   return;
 }
 ath10k_ce_per_engine_service(ar, pipe);
}
