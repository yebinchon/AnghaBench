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
struct ath10k {scalar_t__ state; int /*<<< orphan*/  htt; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 scalar_t__ ATH10K_STATE_RESTARTING ; 
 scalar_t__ ATH10K_STATE_UTF ; 
 int /*<<< orphan*/  WMI_PDEV_SUSPEND_AND_DISABLE_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ath10k *ar)
{
	FUNC6(&ar->conf_mutex);
	FUNC0(ar);

	/* try to suspend target */
	if (ar->state != ATH10K_STATE_RESTARTING &&
	    ar->state != ATH10K_STATE_UTF)
		FUNC4(ar, WMI_PDEV_SUSPEND_AND_DISABLE_INTR);

	FUNC1(ar);
	FUNC3(&ar->htt);
	FUNC2(&ar->htt);
	FUNC5(ar);
}