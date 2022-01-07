
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_qmi {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_QMI ;
 int ATH10K_QMI_EVENT_FW_DOWN_IND ;
 int ath10k_core_free_board_files (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_qmi_remove_msa_permission (struct ath10k_qmi*) ;
 int ath10k_snoc_fw_indication (struct ath10k*,int ) ;

__attribute__((used)) static void ath10k_qmi_event_server_exit(struct ath10k_qmi *qmi)
{
 struct ath10k *ar = qmi->ar;

 ath10k_qmi_remove_msa_permission(qmi);
 ath10k_core_free_board_files(ar);
 ath10k_snoc_fw_indication(ar, ATH10K_QMI_EVENT_FW_DOWN_IND);
 ath10k_dbg(ar, ATH10K_DBG_QMI, "wifi fw qmi service disconnected\n");
}
