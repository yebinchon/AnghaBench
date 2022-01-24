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
struct TYPE_2__ {scalar_t__ err_reason; int /*<<< orphan*/  enable; } ;
struct ath6kl {scalar_t__ state; TYPE_1__ fw_recovery; } ;

/* Variables and functions */
 scalar_t__ ATH6KL_STATE_ON ; 
 scalar_t__ ATH6KL_STATE_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl*) ; 

void FUNC3(struct ath6kl *ar)
{
	if (!ar->fw_recovery.enable)
		return;

	FUNC2(ar);

	if (!ar->fw_recovery.err_reason)
		return;

	/* Process pending fw error detection */
	ar->fw_recovery.err_reason = 0;
	FUNC0(ar->state != ATH6KL_STATE_ON);
	ar->state = ATH6KL_STATE_RECOVERY;
	FUNC1(ar);
	ar->state = ATH6KL_STATE_ON;
}