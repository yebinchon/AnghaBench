
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int htt; int workqueue_aux; int workqueue; } ;


 int ath10k_coredump_destroy (struct ath10k*) ;
 int ath10k_debug_destroy (struct ath10k*) ;
 int ath10k_htt_tx_destroy (int *) ;
 int ath10k_mac_destroy (struct ath10k*) ;
 int ath10k_wmi_free_host_mem (struct ath10k*) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;

void ath10k_core_destroy(struct ath10k *ar)
{
 flush_workqueue(ar->workqueue);
 destroy_workqueue(ar->workqueue);

 flush_workqueue(ar->workqueue_aux);
 destroy_workqueue(ar->workqueue_aux);

 ath10k_debug_destroy(ar);
 ath10k_coredump_destroy(ar);
 ath10k_htt_tx_destroy(&ar->htt);
 ath10k_wmi_free_host_mem(ar);
 ath10k_mac_destroy(ar);
}
