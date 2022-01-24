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
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  sched_scan_timer; int /*<<< orphan*/  flags; struct ath6kl* ar; } ;
struct ath6kl {scalar_t__ state; int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 scalar_t__ ATH6KL_STATE_RECOVERY ; 
 int /*<<< orphan*/  SCHED_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct ath6kl_vif *vif)
{
	struct ath6kl *ar = vif->ar;

	if (!FUNC2(SCHED_SCANNING, &vif->flags))
		return false;

	FUNC1(&vif->sched_scan_timer);

	if (ar->state == ATH6KL_STATE_RECOVERY)
		return true;

	FUNC0(ar->wmi, vif->fw_vif_idx, false);

	return true;
}