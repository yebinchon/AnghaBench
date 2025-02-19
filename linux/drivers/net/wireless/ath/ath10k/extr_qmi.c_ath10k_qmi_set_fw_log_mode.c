
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ result; int error; } ;
struct wlfw_ini_resp_msg_v01 {TYPE_1__ resp; } ;
struct wlfw_ini_req_msg_v01 {int enablefwlog_valid; int enablefwlog; } ;
struct qmi_txn {int dummy; } ;
struct ath10k_snoc {struct ath10k_qmi* qmi; } ;
struct ath10k_qmi {int qmi_hdl; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_QMI ;
 int ATH10K_QMI_TIMEOUT ;
 int EINVAL ;
 int HZ ;
 scalar_t__ QMI_RESULT_SUCCESS_V01 ;
 int QMI_WLFW_INI_REQ_V01 ;
 int WLFW_INI_REQ_MSG_V01_MAX_MSG_LEN ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int qmi_send_request (int *,int *,struct qmi_txn*,int ,int ,int ,struct wlfw_ini_req_msg_v01*) ;
 int qmi_txn_cancel (struct qmi_txn*) ;
 int qmi_txn_init (int *,struct qmi_txn*,int ,struct wlfw_ini_resp_msg_v01*) ;
 int qmi_txn_wait (struct qmi_txn*,int) ;
 int wlfw_ini_req_msg_v01_ei ;
 int wlfw_ini_resp_msg_v01_ei ;

int ath10k_qmi_set_fw_log_mode(struct ath10k *ar, u8 fw_log_mode)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct wlfw_ini_resp_msg_v01 resp = {};
 struct ath10k_qmi *qmi = ar_snoc->qmi;
 struct wlfw_ini_req_msg_v01 req = {};
 struct qmi_txn txn;
 int ret;

 req.enablefwlog_valid = 1;
 req.enablefwlog = fw_log_mode;

 ret = qmi_txn_init(&qmi->qmi_hdl, &txn, wlfw_ini_resp_msg_v01_ei,
      &resp);
 if (ret < 0)
  goto out;

 ret = qmi_send_request(&qmi->qmi_hdl, ((void*)0), &txn,
          QMI_WLFW_INI_REQ_V01,
          WLFW_INI_REQ_MSG_V01_MAX_MSG_LEN,
          wlfw_ini_req_msg_v01_ei, &req);
 if (ret < 0) {
  qmi_txn_cancel(&txn);
  ath10k_err(ar, "fail to send fw log reqest: %d\n", ret);
  goto out;
 }

 ret = qmi_txn_wait(&txn, ATH10K_QMI_TIMEOUT * HZ);
 if (ret < 0)
  goto out;

 if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
  ath10k_err(ar, "fw log request rejectedr: %d\n",
      resp.resp.error);
  ret = -EINVAL;
  goto out;
 }
 ath10k_dbg(ar, ATH10K_DBG_QMI, "qmi fw log request completed, mode: %d\n",
     fw_log_mode);
 return 0;

out:
 return ret;
}
