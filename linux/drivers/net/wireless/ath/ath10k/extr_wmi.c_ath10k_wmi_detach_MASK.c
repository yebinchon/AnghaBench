#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mgmt_pending_tx; } ;
struct ath10k {scalar_t__ svc_rdy_skb; int /*<<< orphan*/  svc_rdy_work; int /*<<< orphan*/  data_lock; TYPE_3__ wmi; TYPE_2__* running_fw; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_5__ {TYPE_1__ fw_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FW_FEATURE_MGMT_TX_BY_REF ; 
 int /*<<< orphan*/  ath10k_wmi_mgmt_tx_clean_up_pending ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct ath10k *ar)
{
	if (FUNC6(ATH10K_FW_FEATURE_MGMT_TX_BY_REF,
		     ar->running_fw->fw_file.fw_features)) {
		FUNC4(&ar->data_lock);
		FUNC3(&ar->wmi.mgmt_pending_tx,
			     ath10k_wmi_mgmt_tx_clean_up_pending, ar);
		FUNC2(&ar->wmi.mgmt_pending_tx);
		FUNC5(&ar->data_lock);
	}

	FUNC0(&ar->svc_rdy_work);

	if (ar->svc_rdy_skb)
		FUNC1(ar->svc_rdy_skb);
}