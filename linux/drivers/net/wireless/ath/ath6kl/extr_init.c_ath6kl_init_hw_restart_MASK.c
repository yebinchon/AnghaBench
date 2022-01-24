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
struct ath6kl {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_RECOVERY ; 
 int /*<<< orphan*/  WMI_READY ; 
 scalar_t__ FUNC0 (struct ath6kl*) ; 
 scalar_t__ FUNC1 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct ath6kl *ar)
{
	FUNC4(WMI_READY, &ar->flag);

	FUNC2(ar);

	if (FUNC1(ar)) {
		FUNC3(ATH6KL_DBG_RECOVERY, "Failed to stop during fw error recovery\n");
		return;
	}

	if (FUNC0(ar)) {
		FUNC3(ATH6KL_DBG_RECOVERY, "Failed to restart during fw error recovery\n");
		return;
	}
}