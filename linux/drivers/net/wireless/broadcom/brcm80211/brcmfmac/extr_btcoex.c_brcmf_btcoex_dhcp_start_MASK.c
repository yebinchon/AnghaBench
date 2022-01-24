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
struct brcmf_if {int dummy; } ;
struct brcmf_btcoex_info {int dhcp_done; int /*<<< orphan*/  work; int /*<<< orphan*/  bt_state; TYPE_1__* vif; } ;
struct TYPE_2__ {struct brcmf_if* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_BT_DHCP_REG41 ; 
 int /*<<< orphan*/  BRCMF_BT_DHCP_REG66 ; 
 int /*<<< orphan*/  BRCMF_BT_DHCP_REG68 ; 
 int /*<<< orphan*/  BRCMF_BT_DHCP_START ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_if*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_btcoex_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct brcmf_btcoex_info *btci)
{
	struct brcmf_if *ifp = btci->vif->ifp;

	FUNC2(btci);
	/* set new regs values */
	FUNC0(ifp, 66, BRCMF_BT_DHCP_REG66);
	FUNC0(ifp, 41, BRCMF_BT_DHCP_REG41);
	FUNC0(ifp, 68, BRCMF_BT_DHCP_REG68);
	btci->dhcp_done = false;
	btci->bt_state = BRCMF_BT_DHCP_START;
	FUNC3(&btci->work);
	FUNC1(TRACE, "enable BT DHCP Timer\n");
}