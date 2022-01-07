
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mgmt_pending_tx; } ;
struct ath10k {scalar_t__ svc_rdy_skb; int svc_rdy_work; int data_lock; TYPE_3__ wmi; TYPE_2__* running_fw; } ;
struct TYPE_4__ {int fw_features; } ;
struct TYPE_5__ {TYPE_1__ fw_file; } ;


 int ATH10K_FW_FEATURE_MGMT_TX_BY_REF ;
 int ath10k_wmi_mgmt_tx_clean_up_pending ;
 int cancel_work_sync (int *) ;
 int dev_kfree_skb (scalar_t__) ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int ) ;

void ath10k_wmi_detach(struct ath10k *ar)
{
 if (test_bit(ATH10K_FW_FEATURE_MGMT_TX_BY_REF,
       ar->running_fw->fw_file.fw_features)) {
  spin_lock_bh(&ar->data_lock);
  idr_for_each(&ar->wmi.mgmt_pending_tx,
        ath10k_wmi_mgmt_tx_clean_up_pending, ar);
  idr_destroy(&ar->wmi.mgmt_pending_tx);
  spin_unlock_bh(&ar->data_lock);
 }

 cancel_work_sync(&ar->svc_rdy_work);

 if (ar->svc_rdy_skb)
  dev_kfree_skb(ar->svc_rdy_skb);
}
