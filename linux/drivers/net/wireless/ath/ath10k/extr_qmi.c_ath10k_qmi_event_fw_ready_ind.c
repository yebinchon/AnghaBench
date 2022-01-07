
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_qmi {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_QMI ;
 int ATH10K_QMI_EVENT_FW_READY_IND ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_snoc_fw_indication (struct ath10k*,int ) ;

__attribute__((used)) static int ath10k_qmi_event_fw_ready_ind(struct ath10k_qmi *qmi)
{
 struct ath10k *ar = qmi->ar;

 ath10k_dbg(ar, ATH10K_DBG_QMI, "wifi fw ready event received\n");
 ath10k_snoc_fw_indication(ar, ATH10K_QMI_EVENT_FW_READY_IND);

 return 0;
}
