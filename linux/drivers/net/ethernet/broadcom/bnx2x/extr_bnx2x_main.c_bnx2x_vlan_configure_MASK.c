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
struct bnx2x {int accept_any_vlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp, bool set_rx_mode)
{
	bool need_accept_any_vlan;

	need_accept_any_vlan = !!FUNC4(bp);

	if (bp->accept_any_vlan != need_accept_any_vlan) {
		bp->accept_any_vlan = need_accept_any_vlan;
		FUNC0(NETIF_MSG_IFUP, "Accept all VLAN %s\n",
		   bp->accept_any_vlan ? "raised" : "cleared");
		if (set_rx_mode) {
			if (FUNC1(bp))
				FUNC2(bp);
			else
				FUNC3(bp);
		}
	}
}