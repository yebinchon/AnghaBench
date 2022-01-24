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
typedef  int u32 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int NIG_LATCH_BC_ENABLE_MI_INT ; 
 int /*<<< orphan*/  NIG_REG_LATCH_BC_0 ; 
#define  PHY_INIT 128 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x_phy*,struct bnx2x*,int) ; 

__attribute__((used)) static void FUNC4(struct bnx2x_phy *phy,
				      struct link_params *params,
				      u32 action)
{
	struct bnx2x *bp = params->bp;
	switch (action) {
	case PHY_INIT:
		if (FUNC2(phy)) {
			/* Save spirom version */
			FUNC3(phy, bp, params->port);
		}
		/* This phy uses the NIG latch mechanism since link indication
		 * arrives through its LED4 and not via its LASI signal, so we
		 * get steady signal instead of clear on read
		 */
		FUNC1(bp, NIG_REG_LATCH_BC_0 + params->port*4,
			      1 << NIG_LATCH_BC_ENABLE_MI_INT);

		FUNC0(bp, phy);
		break;
	}
}