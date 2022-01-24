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
struct TYPE_2__ {scalar_t__ result; int /*<<< orphan*/  error; } ;
struct wlfw_wlan_mode_resp_msg_v01 {TYPE_1__ resp; } ;
struct wlfw_wlan_mode_req_msg_v01 {int mode; int hw_debug_valid; scalar_t__ hw_debug; } ;
struct qmi_txn {int dummy; } ;
struct ath10k_snoc {struct ath10k_qmi* qmi; } ;
struct ath10k_qmi {int /*<<< orphan*/  qmi_hdl; } ;
struct ath10k {int dummy; } ;
typedef  enum wlfw_driver_mode_enum_v01 { ____Placeholder_wlfw_driver_mode_enum_v01 } wlfw_driver_mode_enum_v01 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_QMI ; 
 int ATH10K_QMI_TIMEOUT ; 
 int EINVAL ; 
 int HZ ; 
 scalar_t__ QMI_RESULT_SUCCESS_V01 ; 
 int /*<<< orphan*/  QMI_WLFW_WLAN_MODE_REQ_V01 ; 
 int /*<<< orphan*/  WLFW_WLAN_MODE_REQ_MSG_V01_MAX_MSG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int,...) ; 
 struct ath10k_snoc* FUNC2 (struct ath10k*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlfw_wlan_mode_req_msg_v01*) ; 
 int /*<<< orphan*/  FUNC4 (struct qmi_txn*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,struct wlfw_wlan_mode_resp_msg_v01*) ; 
 int FUNC6 (struct qmi_txn*,int) ; 
 int /*<<< orphan*/  wlfw_wlan_mode_req_msg_v01_ei ; 
 int /*<<< orphan*/  wlfw_wlan_mode_resp_msg_v01_ei ; 

__attribute__((used)) static int
FUNC7(struct ath10k *ar, enum wlfw_driver_mode_enum_v01 mode)
{
	struct ath10k_snoc *ar_snoc = FUNC2(ar);
	struct ath10k_qmi *qmi = ar_snoc->qmi;
	struct wlfw_wlan_mode_resp_msg_v01 resp = {};
	struct wlfw_wlan_mode_req_msg_v01 req = {};
	struct qmi_txn txn;
	int ret;

	ret = FUNC5(&qmi->qmi_hdl, &txn,
			   wlfw_wlan_mode_resp_msg_v01_ei,
			   &resp);
	if (ret < 0)
		goto out;

	req.mode = mode;
	req.hw_debug_valid = 1;
	req.hw_debug = 0;

	ret = FUNC3(&qmi->qmi_hdl, NULL, &txn,
			       QMI_WLFW_WLAN_MODE_REQ_V01,
			       WLFW_WLAN_MODE_REQ_MSG_V01_MAX_MSG_LEN,
			       wlfw_wlan_mode_req_msg_v01_ei, &req);
	if (ret < 0) {
		FUNC4(&txn);
		FUNC1(ar, "failed to send wlan mode %d request: %d\n", mode, ret);
		goto out;
	}

	ret = FUNC6(&txn, ATH10K_QMI_TIMEOUT * HZ);
	if (ret < 0)
		goto out;

	if (resp.resp.result != QMI_RESULT_SUCCESS_V01) {
		FUNC1(ar, "more request rejected: %d\n", resp.resp.error);
		ret = -EINVAL;
		goto out;
	}

	FUNC0(ar, ATH10K_DBG_QMI, "qmi wlan mode req completed: %d\n", mode);
	return 0;

out:
	return ret;
}