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
typedef  int u8 ;
struct ksz_switch {int member; TYPE_1__* port_cfg; } ;
struct ksz_hw {struct ksz_switch* ksz_switch; } ;
struct TYPE_2__ {scalar_t__ stp_state; int member; } ;

/* Variables and functions */
 int HOST_MASK ; 
 scalar_t__ STP_STATE_FORWARDING ; 
 int /*<<< orphan*/  STP_STATE_SIMPLE ; 
 int SWITCH_PORT_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*,int,int) ; 

__attribute__((used)) static void FUNC3(struct ksz_hw *hw)
{
	int port;
	u8  member;
	struct ksz_switch *sw = hw->ksz_switch;

	/* No ports in forwarding state. */
	if (!sw->member) {
		FUNC0(hw, SWITCH_PORT_NUM, STP_STATE_SIMPLE);
		FUNC1(hw);
	}
	for (port = 0; port < SWITCH_PORT_NUM; port++) {
		if (STP_STATE_FORWARDING == sw->port_cfg[port].stp_state)
			member = HOST_MASK | sw->member;
		else
			member = HOST_MASK | (1 << port);
		if (member != sw->port_cfg[port].member)
			FUNC2(hw, port, member);
	}
}