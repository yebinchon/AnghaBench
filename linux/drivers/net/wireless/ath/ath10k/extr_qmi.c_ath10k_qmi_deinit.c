
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_snoc {struct ath10k_qmi* qmi; } ;
struct ath10k_qmi {int event_wq; int event_work; int qmi_hdl; } ;
struct ath10k {int dummy; } ;


 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int kfree (struct ath10k_qmi*) ;
 int qmi_handle_release (int *) ;

int ath10k_qmi_deinit(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct ath10k_qmi *qmi = ar_snoc->qmi;

 qmi_handle_release(&qmi->qmi_hdl);
 cancel_work_sync(&qmi->event_work);
 destroy_workqueue(qmi->event_wq);
 kfree(qmi);
 ar_snoc->qmi = ((void*)0);

 return 0;
}
