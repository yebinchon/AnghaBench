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
struct ath10k_snoc {struct ath10k_qmi* qmi; } ;
struct ath10k_qmi {int /*<<< orphan*/  event_wq; int /*<<< orphan*/  event_work; int /*<<< orphan*/  qmi_hdl; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 struct ath10k_snoc* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k_qmi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ath10k *ar)
{
	struct ath10k_snoc *ar_snoc = FUNC0(ar);
	struct ath10k_qmi *qmi = ar_snoc->qmi;

	FUNC4(&qmi->qmi_hdl);
	FUNC1(&qmi->event_work);
	FUNC2(qmi->event_wq);
	FUNC3(qmi);
	ar_snoc->qmi = NULL;

	return 0;
}