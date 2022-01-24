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
typedef  int /*<<< orphan*/  u16 ;
struct link_params {scalar_t__* req_line_speed; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ media_type; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ETH_PHY_SFP_1G_FIBER ; 
 int /*<<< orphan*/  INT_PHY ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 scalar_t__ SPEED_10000 ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x_phy*,struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_phy*,struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_phy*,struct link_params*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bnx2x_phy *phy,
				      struct link_params *params)
{
	u16 lane = FUNC2(phy, params);
	struct bnx2x *bp = params->bp;
	FUNC3(phy, params, lane);
	if ((params->req_line_speed[FUNC1(INT_PHY)] ==
	     SPEED_10000) &&
	    (phy->media_type != ETH_PHY_SFP_1G_FIBER)) {
		FUNC0(NETIF_MSG_LINK, "Setting 10G SFI\n");
		FUNC4(phy, params, 0);
	} else {
		FUNC0(NETIF_MSG_LINK, "Setting 1G Fiber\n");
		FUNC5(phy, params, 1, 0);
	}
}