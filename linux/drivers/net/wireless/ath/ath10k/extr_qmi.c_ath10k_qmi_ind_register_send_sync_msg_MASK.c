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
struct TYPE_2__ {scalar_t__ result; int error; } ;
struct wlfw_ind_register_resp_msg_v01 {int fw_status; scalar_t__ fw_status_valid; TYPE_1__ resp; } ;
struct wlfw_ind_register_req_msg_v01 {int client_id_valid; int fw_ready_enable_valid; int fw_ready_enable; int msa_ready_enable_valid; int msa_ready_enable; int /*<<< orphan*/  client_id; } ;
struct qmi_txn {int dummy; } ;
struct ath10k_qmi {int fw_ready; int /*<<< orphan*/  qmi_hdl; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_QMI ; 
 int /*<<< orphan*/  ATH10K_QMI_CLIENT_ID ; 
 int ATH10K_QMI_TIMEOUT ; 
 int EINVAL ; 
 int HZ ; 
 scalar_t__ QMI_RESULT_SUCCESS_V01 ; 
 int QMI_WLFW_FW_READY_V01 ; 
 int /*<<< orphan*/  QMI_WLFW_IND_REGISTER_REQ_V01 ; 
 int /*<<< orphan*/  WLFW_IND_REGISTER_REQ_MSG_V01_MAX_MSG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlfw_ind_register_req_msg_v01*) ; 
 int /*<<< orphan*/  FUNC3 (struct qmi_txn*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,struct wlfw_ind_register_resp_msg_v01*) ; 
 int FUNC5 (struct qmi_txn*,int) ; 
 int /*<<< orphan*/  wlfw_ind_register_req_msg_v01_ei ; 
 int /*<<< orphan*/  wlfw_ind_register_resp_msg_v01_ei ; 

__attribute__((used)) static int
FUNC6(struct ath10k_qmi *qmi)
{
	struct wlfw_ind_register_resp_msg_v01 resp = {};
	struct wlfw_ind_register_req_msg_v01 req = {};
	struct ath10k *ar = qmi->ar;
	struct qmi_txn txn;
	int ret;

	req.client_id_valid = 1;
	req.client_id = ATH10K_QMI_CLIENT_ID;
	req.fw_ready_enable_valid = 1;
	req.fw_ready_enable = 1;
	req.msa_ready_enable_valid = 1;
	req.msa_ready_enable = 1;

	ret = FUNC4(&qmi->qmi_hdl, &txn,
			   wlfw_ind_register_resp_msg_v01_ei, &resp);
	if (ret < 0)
		goto out;

	ret = FUNC2(&qmi->qmi_hdl, NULL, &txn,
			       QMI_WLFW_IND_REGISTER_REQ_V01,
			       WLFW_IND_REGISTER_REQ_MSG_V01_MAX_MSG_LEN,
			       wlfw_ind_register_req_msg_v01_ei, &req);
	if (ret < 0) {
		FUNC3(&txn);
		FUNC1(ar, "failed to send indication registered request: %d\n", ret);
		goto out;
	}

	ret = FUNC5(&txn, ATH10K_QMI_TIMEOUT * HZ);
	if (ret < 0)
		goto out;

	if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
		FUNC1(ar, "indication request rejected: %d\n", resp.resp.error);
		ret = -EINVAL;
		goto out;
	}

	if (resp.fw_status_valid) {
		if (resp.fw_status & QMI_WLFW_FW_READY_V01)
			qmi->fw_ready = true;
	}
	FUNC0(ar, ATH10K_DBG_QMI, "qmi indication register request completed\n");
	return 0;

out:
	return ret;
}