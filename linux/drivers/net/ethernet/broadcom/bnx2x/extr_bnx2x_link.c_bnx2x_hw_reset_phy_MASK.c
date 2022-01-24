#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct link_params {int port; TYPE_1__* phy; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* hw_reset ) (TYPE_1__*,struct link_params*) ;} ;

/* Variables and functions */
 size_t INT_PHY ; 
 size_t MAX_PHYS ; 
 int NIG_MASK_MI_INT ; 
 int NIG_MASK_SERDES0_LINK_STATUS ; 
 int NIG_MASK_XGXS0_LINK10G ; 
 int NIG_MASK_XGXS0_LINK_STATUS ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct link_params*,int /*<<< orphan*/ ) ; 
 TYPE_1__ phy_null ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct link_params*) ; 

void FUNC3(struct link_params *params)
{
	u8 phy_index;
	struct bnx2x *bp = params->bp;
	FUNC1(params, 0);
	FUNC0(bp, NIG_REG_MASK_INTERRUPT_PORT0 + params->port*4,
		       (NIG_MASK_XGXS0_LINK_STATUS |
			NIG_MASK_XGXS0_LINK10G |
			NIG_MASK_SERDES0_LINK_STATUS |
			NIG_MASK_MI_INT));

	for (phy_index = INT_PHY; phy_index < MAX_PHYS;
	      phy_index++) {
		if (params->phy[phy_index].hw_reset) {
			params->phy[phy_index].hw_reset(
				&params->phy[phy_index],
				params);
			params->phy[phy_index] = phy_null;
		}
	}
}