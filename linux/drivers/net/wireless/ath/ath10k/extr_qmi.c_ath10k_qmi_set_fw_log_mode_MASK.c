#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ result; int error; } ;
struct wlfw_ini_resp_msg_v01 {TYPE_1__ resp; } ;
struct wlfw_ini_req_msg_v01 {int enablefwlog_valid; int /*<<< orphan*/  enablefwlog; } ;
struct qmi_txn {int dummy; } ;
struct ath10k_snoc {struct ath10k_qmi* qmi; } ;
struct ath10k_qmi {int /*<<< orphan*/  qmi_hdl; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_QMI ; 
 int ATH10K_QMI_TIMEOUT ; 
 int EINVAL ; 
 int HZ ; 
 scalar_t__ QMI_RESULT_SUCCESS_V01 ; 
 int /*<<< orphan*/  QMI_WLFW_INI_REQ_V01 ; 
 int /*<<< orphan*/  WLFW_INI_REQ_MSG_V01_MAX_MSG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 struct ath10k_snoc* FUNC2 (struct ath10k*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlfw_ini_req_msg_v01*) ; 
 int /*<<< orphan*/  FUNC4 (struct qmi_txn*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,struct wlfw_ini_resp_msg_v01*) ; 
 int FUNC6 (struct qmi_txn*,int) ; 
 int /*<<< orphan*/  wlfw_ini_req_msg_v01_ei ; 
 int /*<<< orphan*/  wlfw_ini_resp_msg_v01_ei ; 

int FUNC7(struct ath10k *ar, u8 fw_log_mode)
{
	struct ath10k_snoc *ar_snoc = FUNC2(ar);
	struct wlfw_ini_resp_msg_v01 resp = {};
	struct ath10k_qmi *qmi = ar_snoc->qmi;
	struct wlfw_ini_req_msg_v01 req = {};
	struct qmi_txn txn;
	int ret;

	req.enablefwlog_valid = 1;
	req.enablefwlog = fw_log_mode;

	ret = FUNC5(&qmi->qmi_hdl, &txn, wlfw_ini_resp_msg_v01_ei,
			   &resp);
	if (ret < 0)
		goto out;

	ret = FUNC3(&qmi->qmi_hdl, NULL, &txn,
			       QMI_WLFW_INI_REQ_V01,
			       WLFW_INI_REQ_MSG_V01_MAX_MSG_LEN,
			       wlfw_ini_req_msg_v01_ei, &req);
	if (ret < 0) {
		FUNC4(&txn);
		FUNC1(ar, "fail to send fw log reqest: %d\n", ret);
		goto out;
	}

	ret = FUNC6(&txn, ATH10K_QMI_TIMEOUT * HZ);
	if (ret < 0)
		goto out;

	if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
		FUNC1(ar, "fw log request rejectedr: %d\n",
			   resp.resp.error);
		ret = -EINVAL;
		goto out;
	}
	FUNC0(ar, ATH10K_DBG_QMI, "qmi fw log request completed, mode: %d\n",
		   fw_log_mode);
	return 0;

out:
	return ret;
}