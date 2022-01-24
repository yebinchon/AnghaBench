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
typedef  int u32 ;
struct TYPE_2__ {int flow_ctrl; scalar_t__ link_up; } ;
struct bnx2x {TYPE_1__ link_vars; scalar_t__ dropless_fc; } ;

/* Variables and functions */
 scalar_t__ BAR_USTRORM_INTMEM ; 
 int BNX2X_FLOW_CTRL_TX ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int NETIF_MSG_IFUP ; 
 int NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp)
{
	u32 pause_enabled = 0;

	if (!FUNC1(bp) && bp->dropless_fc && bp->link_vars.link_up) {
		if (bp->link_vars.flow_ctrl & BNX2X_FLOW_CTRL_TX)
			pause_enabled = 1;

		FUNC3(bp, BAR_USTRORM_INTMEM +
			   FUNC4(FUNC0(bp)),
		       pause_enabled);
	}

	FUNC2(NETIF_MSG_IFUP | NETIF_MSG_LINK, "dropless_fc is %s\n",
	   pause_enabled ? "enabled" : "disabled");
}