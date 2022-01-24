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
struct ath6kl_vif {int /*<<< orphan*/  mc_filter; int /*<<< orphan*/  if_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  sched_scan_timer; int /*<<< orphan*/  disconnect_timer; int /*<<< orphan*/  aggr_cntxt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WMM_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ath6kl_wmi_sscan_timer ; 
 int /*<<< orphan*/  disconnect_timer_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ath6kl_vif *vif)
{
	vif->aggr_cntxt = FUNC1(vif);
	if (!vif->aggr_cntxt) {
		FUNC2("failed to initialize aggr\n");
		return -ENOMEM;
	}

	FUNC5(&vif->disconnect_timer, disconnect_timer_handler, 0);
	FUNC5(&vif->sched_scan_timer, ath6kl_wmi_sscan_timer, 0);

	FUNC3(WMM_ENABLED, &vif->flags);
	FUNC4(&vif->if_lock);

	FUNC0(&vif->mc_filter);

	return 0;
}