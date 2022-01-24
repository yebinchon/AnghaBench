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
struct brcmf_btcoex_info {int saved_regs_part2; int /*<<< orphan*/  reg71; int /*<<< orphan*/  reg65; int /*<<< orphan*/  reg64; int /*<<< orphan*/  reg51; int /*<<< orphan*/  reg50; TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_BT_DHCP_REG50 ; 
 int /*<<< orphan*/  BRCMF_BT_DHCP_REG51 ; 
 int /*<<< orphan*/  BRCMF_BT_DHCP_REG64 ; 
 int /*<<< orphan*/  BRCMF_BT_DHCP_REG65 ; 
 int /*<<< orphan*/  BRCMF_BT_DHCP_REG71 ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_if*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_if*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct brcmf_if* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct brcmf_btcoex_info *btci,
				    bool trump_sco)
{
	struct brcmf_if *ifp = FUNC3(btci->cfg->pub, 0);

	if (trump_sco && !btci->saved_regs_part2) {
		/* this should reduce eSCO agressive
		 * retransmit w/o breaking it
		 */

		/* save current */
		FUNC2(INFO, "new SCO/eSCO coex algo {save & override}\n");
		FUNC0(ifp, 50, &btci->reg50);
		FUNC0(ifp, 51, &btci->reg51);
		FUNC0(ifp, 64, &btci->reg64);
		FUNC0(ifp, 65, &btci->reg65);
		FUNC0(ifp, 71, &btci->reg71);

		btci->saved_regs_part2 = true;
		FUNC2(INFO,
			  "saved bt_params[50,51,64,65,71]: 0x%x 0x%x 0x%x 0x%x 0x%x\n",
			  btci->reg50, btci->reg51, btci->reg64,
			  btci->reg65, btci->reg71);

		/* pacify the eSco   */
		FUNC1(ifp, 50, BRCMF_BT_DHCP_REG50);
		FUNC1(ifp, 51, BRCMF_BT_DHCP_REG51);
		FUNC1(ifp, 64, BRCMF_BT_DHCP_REG64);
		FUNC1(ifp, 65, BRCMF_BT_DHCP_REG65);
		FUNC1(ifp, 71, BRCMF_BT_DHCP_REG71);

	} else if (btci->saved_regs_part2) {
		/* restore previously saved bt params */
		FUNC2(INFO, "Do new SCO/eSCO coex algo {restore}\n");
		FUNC1(ifp, 50, btci->reg50);
		FUNC1(ifp, 51, btci->reg51);
		FUNC1(ifp, 64, btci->reg64);
		FUNC1(ifp, 65, btci->reg65);
		FUNC1(ifp, 71, btci->reg71);

		FUNC2(INFO,
			  "restored bt_params[50,51,64,65,71]: 0x%x 0x%x 0x%x 0x%x 0x%x\n",
			  btci->reg50, btci->reg51, btci->reg64,
			  btci->reg65, btci->reg71);

		btci->saved_regs_part2 = false;
	} else {
		FUNC2(INFO, "attempted to restore not saved BTCOEX params\n");
	}
}