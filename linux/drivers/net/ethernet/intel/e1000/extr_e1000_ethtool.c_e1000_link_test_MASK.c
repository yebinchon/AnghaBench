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
typedef  int u64 ;
struct e1000_hw {scalar_t__ media_type; int serdes_has_link; scalar_t__ autoneg; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int E1000_STATUS_LU ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 scalar_t__ e1000_media_type_internal_serdes ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct e1000_adapter *adapter, u64 *data)
{
	struct e1000_hw *hw = &adapter->hw;
	*data = 0;
	if (hw->media_type == e1000_media_type_internal_serdes) {
		int i = 0;

		hw->serdes_has_link = false;

		/* On some blade server designs, link establishment
		 * could take as long as 2-3 minutes
		 */
		do {
			FUNC0(hw);
			if (hw->serdes_has_link)
				return *data;
			FUNC2(20);
		} while (i++ < 3750);

		*data = 1;
	} else {
		FUNC0(hw);
		if (hw->autoneg)  /* if auto_neg is set wait for it */
			FUNC2(4000);

		if (!(FUNC1(STATUS) & E1000_STATUS_LU))
			*data = 1;
	}
	return *data;
}