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
struct ath10k_qmi {scalar_t__ fw_ready; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_QMI_EVENT_FW_READY_IND ; 
 int FUNC0 (struct ath10k_qmi*) ; 
 int FUNC1 (struct ath10k_qmi*) ; 
 int FUNC2 (struct ath10k_qmi*) ; 
 int FUNC3 (struct ath10k_qmi*) ; 
 int FUNC4 (struct ath10k_qmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k_qmi*) ; 
 int FUNC6 (struct ath10k_qmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ath10k_qmi *qmi)
{
	struct ath10k *ar = qmi->ar;
	int ret;

	ret = FUNC2(qmi);
	if (ret)
		return;

	if (qmi->fw_ready) {
		FUNC7(ar, ATH10K_QMI_EVENT_FW_READY_IND);
		return;
	}

	ret = FUNC1(qmi);
	if (ret)
		return;

	ret = FUNC3(qmi);
	if (ret)
		return;

	ret = FUNC6(qmi);
	if (ret)
		return;

	ret = FUNC4(qmi);
	if (ret)
		goto err_setup_msa;

	ret = FUNC0(qmi);
	if (ret)
		goto err_setup_msa;

	return;

err_setup_msa:
	FUNC5(qmi);
}