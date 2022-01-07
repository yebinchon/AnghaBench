
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ result; int error; } ;
struct wlfw_wlan_mode_resp_msg_v01 {TYPE_1__ resp; } ;
struct wlfw_wlan_mode_req_msg_v01 {int mode; int hw_debug_valid; scalar_t__ hw_debug; } ;
struct qmi_txn {int dummy; } ;
struct ath10k_snoc {struct ath10k_qmi* qmi; } ;
struct ath10k_qmi {int qmi_hdl; } ;
struct ath10k {int dummy; } ;
typedef enum wlfw_driver_mode_enum_v01 { ____Placeholder_wlfw_driver_mode_enum_v01 } wlfw_driver_mode_enum_v01 ;


 int ATH10K_DBG_QMI ;
 int ATH10K_QMI_TIMEOUT ;
 int EINVAL ;
 int HZ ;
 scalar_t__ QMI_RESULT_SUCCESS_V01 ;
 int QMI_WLFW_WLAN_MODE_REQ_V01 ;
 int WLFW_WLAN_MODE_REQ_MSG_V01_MAX_MSG_LEN ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_err (struct ath10k*,char*,int,...) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int qmi_send_request (int *,int *,struct qmi_txn*,int ,int ,int ,struct wlfw_wlan_mode_req_msg_v01*) ;
 int qmi_txn_cancel (struct qmi_txn*) ;
 int qmi_txn_init (int *,struct qmi_txn*,int ,struct wlfw_wlan_mode_resp_msg_v01*) ;
 int qmi_txn_wait (struct qmi_txn*,int) ;
 int wlfw_wlan_mode_req_msg_v01_ei ;
 int wlfw_wlan_mode_resp_msg_v01_ei ;

__attribute__((used)) static int
ath10k_qmi_mode_send_sync_msg(struct ath10k *ar, enum wlfw_driver_mode_enum_v01 mode)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct ath10k_qmi *qmi = ar_snoc->qmi;
 struct wlfw_wlan_mode_resp_msg_v01 resp = {};
 struct wlfw_wlan_mode_req_msg_v01 req = {};
 struct qmi_txn txn;
 int ret;

 ret = qmi_txn_init(&qmi->qmi_hdl, &txn,
      wlfw_wlan_mode_resp_msg_v01_ei,
      &resp);
 if (ret < 0)
  goto out;

 req.mode = mode;
 req.hw_debug_valid = 1;
 req.hw_debug = 0;

 ret = qmi_send_request(&qmi->qmi_hdl, ((void*)0), &txn,
          QMI_WLFW_WLAN_MODE_REQ_V01,
          WLFW_WLAN_MODE_REQ_MSG_V01_MAX_MSG_LEN,
          wlfw_wlan_mode_req_msg_v01_ei, &req);
 if (ret < 0) {
  qmi_txn_cancel(&txn);
  ath10k_err(ar, "failed to send wlan mode %d request: %d\n", mode, ret);
  goto out;
 }

 ret = qmi_txn_wait(&txn, ATH10K_QMI_TIMEOUT * HZ);
 if (ret < 0)
  goto out;

 if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
  ath10k_err(ar, "more request rejected: %d\n", resp.resp.error);
  ret = -EINVAL;
  goto out;
 }

 ath10k_dbg(ar, ATH10K_DBG_QMI, "qmi wlan mode req completed: %d\n", mode);
 return 0;

out:
 return ret;
}
