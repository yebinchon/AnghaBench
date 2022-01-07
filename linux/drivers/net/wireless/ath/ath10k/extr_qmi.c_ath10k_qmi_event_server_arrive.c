
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_qmi {scalar_t__ fw_ready; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_QMI_EVENT_FW_READY_IND ;
 int ath10k_qmi_cap_send_sync_msg (struct ath10k_qmi*) ;
 int ath10k_qmi_host_cap_send_sync (struct ath10k_qmi*) ;
 int ath10k_qmi_ind_register_send_sync_msg (struct ath10k_qmi*) ;
 int ath10k_qmi_msa_mem_info_send_sync_msg (struct ath10k_qmi*) ;
 int ath10k_qmi_msa_ready_send_sync_msg (struct ath10k_qmi*) ;
 int ath10k_qmi_remove_msa_permission (struct ath10k_qmi*) ;
 int ath10k_qmi_setup_msa_permissions (struct ath10k_qmi*) ;
 int ath10k_snoc_fw_indication (struct ath10k*,int ) ;

__attribute__((used)) static void ath10k_qmi_event_server_arrive(struct ath10k_qmi *qmi)
{
 struct ath10k *ar = qmi->ar;
 int ret;

 ret = ath10k_qmi_ind_register_send_sync_msg(qmi);
 if (ret)
  return;

 if (qmi->fw_ready) {
  ath10k_snoc_fw_indication(ar, ATH10K_QMI_EVENT_FW_READY_IND);
  return;
 }

 ret = ath10k_qmi_host_cap_send_sync(qmi);
 if (ret)
  return;

 ret = ath10k_qmi_msa_mem_info_send_sync_msg(qmi);
 if (ret)
  return;

 ret = ath10k_qmi_setup_msa_permissions(qmi);
 if (ret)
  return;

 ret = ath10k_qmi_msa_ready_send_sync_msg(qmi);
 if (ret)
  goto err_setup_msa;

 ret = ath10k_qmi_cap_send_sync_msg(qmi);
 if (ret)
  goto err_setup_msa;

 return;

err_setup_msa:
 ath10k_qmi_remove_msa_permission(qmi);
}
