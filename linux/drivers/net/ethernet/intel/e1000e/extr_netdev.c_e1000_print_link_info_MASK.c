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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {scalar_t__ link_duplex; int /*<<< orphan*/  link_speed; TYPE_1__* netdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_RFCE ; 
 int E1000_CTRL_TFCE ; 
 scalar_t__ FULL_DUPLEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC2(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl = FUNC0(CTRL);

	/* Link status message must follow this format for user tools */
	FUNC1("%s NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\n",
		adapter->netdev->name, adapter->link_speed,
		adapter->link_duplex == FULL_DUPLEX ? "Full" : "Half",
		(ctrl & E1000_CTRL_TFCE) && (ctrl & E1000_CTRL_RFCE) ? "Rx/Tx" :
		(ctrl & E1000_CTRL_RFCE) ? "Rx" :
		(ctrl & E1000_CTRL_TFCE) ? "Tx" : "None");
}