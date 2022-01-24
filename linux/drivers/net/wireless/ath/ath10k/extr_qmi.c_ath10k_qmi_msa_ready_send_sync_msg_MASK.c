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
struct wlfw_msa_ready_resp_msg_v01 {TYPE_1__ resp; } ;
struct wlfw_msa_ready_req_msg_v01 {int dummy; } ;
struct qmi_txn {int dummy; } ;
struct ath10k_qmi {int /*<<< orphan*/  qmi_hdl; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_QMI ; 
 int ATH10K_QMI_TIMEOUT ; 
 int EINVAL ; 
 int HZ ; 
 scalar_t__ QMI_RESULT_SUCCESS_V01 ; 
 int /*<<< orphan*/  QMI_WLFW_MSA_READY_REQ_V01 ; 
 int /*<<< orphan*/  WLFW_MSA_READY_REQ_MSG_V01_MAX_MSG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlfw_msa_ready_req_msg_v01*) ; 
 int /*<<< orphan*/  FUNC3 (struct qmi_txn*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,struct wlfw_msa_ready_resp_msg_v01*) ; 
 int FUNC5 (struct qmi_txn*,int) ; 
 int /*<<< orphan*/  wlfw_msa_ready_req_msg_v01_ei ; 
 int /*<<< orphan*/  wlfw_msa_ready_resp_msg_v01_ei ; 

__attribute__((used)) static int FUNC6(struct ath10k_qmi *qmi)
{
	struct wlfw_msa_ready_resp_msg_v01 resp = {};
	struct wlfw_msa_ready_req_msg_v01 req = {};
	struct ath10k *ar = qmi->ar;
	struct qmi_txn txn;
	int ret;

	ret = FUNC4(&qmi->qmi_hdl, &txn,
			   wlfw_msa_ready_resp_msg_v01_ei, &resp);
	if (ret < 0)
		goto out;

	ret = FUNC2(&qmi->qmi_hdl, NULL, &txn,
			       QMI_WLFW_MSA_READY_REQ_V01,
			       WLFW_MSA_READY_REQ_MSG_V01_MAX_MSG_LEN,
			       wlfw_msa_ready_req_msg_v01_ei, &req);
	if (ret < 0) {
		FUNC3(&txn);
		FUNC1(ar, "failed to send msa mem ready request: %d\n", ret);
		goto out;
	}

	ret = FUNC5(&txn, ATH10K_QMI_TIMEOUT * HZ);
	if (ret < 0)
		goto out;

	if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
		FUNC1(ar, "msa ready request rejected: %d\n", resp.resp.error);
		ret = -EINVAL;
	}

	FUNC0(ar, ATH10K_DBG_QMI, "qmi msa mem ready request completed\n");
	return 0;

out:
	return ret;
}