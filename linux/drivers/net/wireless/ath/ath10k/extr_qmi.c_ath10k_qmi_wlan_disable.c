
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int QMI_WLFW_OFF_V01 ;
 int ath10k_qmi_mode_send_sync_msg (struct ath10k*,int ) ;

int ath10k_qmi_wlan_disable(struct ath10k *ar)
{
 return ath10k_qmi_mode_send_sync_msg(ar, QMI_WLFW_OFF_V01);
}
