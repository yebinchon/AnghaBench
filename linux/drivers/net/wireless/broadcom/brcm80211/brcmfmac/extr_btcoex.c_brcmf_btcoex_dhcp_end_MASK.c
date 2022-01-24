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
struct brcmf_btcoex_info {int dhcp_done; int timer_on; scalar_t__ bt_state; int /*<<< orphan*/  work; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ BRCMF_BT_DHCP_IDLE ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_btcoex_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct brcmf_btcoex_info *btci)
{
	/* Stop any bt timer because DHCP session is done */
	btci->dhcp_done = true;
	if (btci->timer_on) {
		FUNC1(INFO, "disable BT DHCP Timer\n");
		btci->timer_on = false;
		FUNC2(&btci->timer);

		/* schedule worker if transition to IDLE is needed */
		if (btci->bt_state != BRCMF_BT_DHCP_IDLE) {
			FUNC1(INFO, "bt_state:%d\n",
				  btci->bt_state);
			FUNC3(&btci->work);
		}
	} else {
		/* Restore original values */
		FUNC0(btci);
	}
}