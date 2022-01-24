#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ (* force_speed_duplex ) (struct igc_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ autoneg; } ;
struct igc_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  COPPER_LINK_UP_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct igc_hw*) ; 
 scalar_t__ FUNC2 (struct igc_hw*) ; 
 scalar_t__ FUNC3 (struct igc_hw*) ; 
 scalar_t__ FUNC4 (struct igc_hw*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC5 (struct igc_hw*) ; 

s32 FUNC6(struct igc_hw *hw)
{
	s32 ret_val = 0;
	bool link;

	if (hw->mac.autoneg) {
		/* Setup autoneg and flow control advertisement and perform
		 * autonegotiation.
		 */
		ret_val = FUNC3(hw);
		if (ret_val)
			goto out;
	} else {
		/* PHY will be set to 10H, 10F, 100H or 100F
		 * depending on user settings.
		 */
		FUNC0("Forcing Speed and Duplex\n");
		ret_val = hw->phy.ops.force_speed_duplex(hw);
		if (ret_val) {
			FUNC0("Error Forcing Speed and Duplex\n");
			goto out;
		}
	}

	/* Check link status. Wait up to 100 microseconds for link to become
	 * valid.
	 */
	ret_val = FUNC4(hw, COPPER_LINK_UP_LIMIT, 10, &link);
	if (ret_val)
		goto out;

	if (link) {
		FUNC0("Valid link established!!!\n");
		FUNC1(hw);
		ret_val = FUNC2(hw);
	} else {
		FUNC0("Unable to establish link!!!\n");
	}

out:
	return ret_val;
}