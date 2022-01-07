
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_qmi {int dummy; } ;


 int ath10k_qmi_bdf_dnld_send_sync (struct ath10k_qmi*) ;
 int ath10k_qmi_fetch_board_file (struct ath10k_qmi*) ;
 int ath10k_qmi_send_cal_report_req (struct ath10k_qmi*) ;

__attribute__((used)) static void ath10k_qmi_event_msa_ready(struct ath10k_qmi *qmi)
{
 int ret;

 ret = ath10k_qmi_fetch_board_file(qmi);
 if (ret)
  goto out;

 ret = ath10k_qmi_bdf_dnld_send_sync(qmi);
 if (ret)
  goto out;

 ret = ath10k_qmi_send_cal_report_req(qmi);

out:
 return;
}
