
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int wmi_mgmt_tx_work; int offchan_tx_work; } ;


 int ath10k_mgmt_over_wmi_tx_purge (struct ath10k*) ;
 int ath10k_offchan_tx_purge (struct ath10k*) ;
 int cancel_work_sync (int *) ;
 int synchronize_net () ;

void ath10k_drain_tx(struct ath10k *ar)
{

 synchronize_net();

 ath10k_offchan_tx_purge(ar);
 ath10k_mgmt_over_wmi_tx_purge(ar);

 cancel_work_sync(&ar->offchan_tx_work);
 cancel_work_sync(&ar->wmi_mgmt_tx_work);
}
