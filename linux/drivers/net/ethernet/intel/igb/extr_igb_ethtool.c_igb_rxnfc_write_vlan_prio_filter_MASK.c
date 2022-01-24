#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  vlan_tci; } ;
struct igb_nfc_filter {int action; TYPE_1__ filter; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {TYPE_2__* pdev; struct e1000_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_VLAPQF ; 
 int FUNC0 (int) ; 
 int E1000_VLAPQF_QUEUE_MASK ; 
 int FUNC1 (int,int) ; 
 int EEXIST ; 
 int VLAN_PRIO_MASK ; 
 int VLAN_PRIO_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct igb_adapter *adapter,
					    struct igb_nfc_filter *input)
{
	struct e1000_hw *hw = &adapter->hw;
	u8 vlan_priority;
	u16 queue_index;
	u32 vlapqf;

	vlapqf = FUNC4(E1000_VLAPQF);
	vlan_priority = (FUNC3(input->filter.vlan_tci) & VLAN_PRIO_MASK)
				>> VLAN_PRIO_SHIFT;
	queue_index = (vlapqf >> (vlan_priority * 4)) & E1000_VLAPQF_QUEUE_MASK;

	/* check whether this vlan prio is already set */
	if ((vlapqf & FUNC0(vlan_priority)) &&
	    (queue_index != input->action)) {
		FUNC2(&adapter->pdev->dev, "ethtool rxnfc set vlan prio filter failed.\n");
		return -EEXIST;
	}

	vlapqf |= FUNC0(vlan_priority);
	vlapqf |= FUNC1(vlan_priority, input->action);

	FUNC5(E1000_VLAPQF, vlapqf);

	return 0;
}