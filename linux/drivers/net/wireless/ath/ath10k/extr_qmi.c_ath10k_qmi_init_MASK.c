#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_snoc {struct ath10k_qmi* qmi; } ;
struct ath10k_qmi {int /*<<< orphan*/  qmi_hdl; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  event_work; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLFW_BDF_DOWNLOAD_REQ_MSG_V01_MAX_MSG_LEN ; 
 int /*<<< orphan*/  WLFW_SERVICE_ID_V01 ; 
 int /*<<< orphan*/  WLFW_SERVICE_VERS_V01 ; 
 int /*<<< orphan*/  WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  ath10k_qmi_driver_event_work ; 
 int /*<<< orphan*/  ath10k_qmi_ops ; 
 int FUNC4 (struct ath10k_qmi*,int /*<<< orphan*/ ) ; 
 struct ath10k_snoc* FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k_qmi*) ; 
 struct ath10k_qmi* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qmi_msg_handler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct ath10k *ar, u32 msa_size)
{
	struct ath10k_snoc *ar_snoc = FUNC5(ar);
	struct ath10k_qmi *qmi;
	int ret;

	qmi = FUNC8(sizeof(*qmi), GFP_KERNEL);
	if (!qmi)
		return -ENOMEM;

	qmi->ar = ar;
	ar_snoc->qmi = qmi;

	ret = FUNC4(qmi, msa_size);
	if (ret)
		goto err;

	ret = FUNC10(&qmi->qmi_hdl,
			      WLFW_BDF_DOWNLOAD_REQ_MSG_V01_MAX_MSG_LEN,
			      &ath10k_qmi_ops, qmi_msg_handler);
	if (ret)
		goto err;

	qmi->event_wq = FUNC2("ath10k_qmi_driver_event",
					WQ_UNBOUND, 1);
	if (!qmi->event_wq) {
		FUNC3(ar, "failed to allocate workqueue\n");
		ret = -EFAULT;
		goto err_release_qmi_handle;
	}

	FUNC0(&qmi->event_list);
	FUNC12(&qmi->event_lock);
	FUNC1(&qmi->event_work, ath10k_qmi_driver_event_work);

	ret = FUNC9(&qmi->qmi_hdl, WLFW_SERVICE_ID_V01,
			     WLFW_SERVICE_VERS_V01, 0);
	if (ret)
		goto err_qmi_lookup;

	return 0;

err_qmi_lookup:
	FUNC6(qmi->event_wq);

err_release_qmi_handle:
	FUNC11(&qmi->qmi_hdl);

err:
	FUNC7(qmi);
	return ret;
}