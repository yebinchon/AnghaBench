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
typedef  int u16 ;
struct ksz_hw {TYPE_2__* ksz_switch; } ;
struct TYPE_4__ {TYPE_1__* port_cfg; } ;
struct TYPE_3__ {int port_prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS8842_PORT_CTRL_1_OFFSET ; 
 int PORT_BASED_PRIORITY_BASE ; 
 int PORT_BASED_PRIORITY_MASK ; 
 int PORT_BASED_PRIORITY_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ksz_hw *hw, int port, u8 prio)
{
	u16 data;

	if (prio > PORT_BASED_PRIORITY_BASE)
		prio = PORT_BASED_PRIORITY_BASE;

	hw->ksz_switch->port_cfg[port].port_prio = prio;

	FUNC0(hw, port, KS8842_PORT_CTRL_1_OFFSET, &data);
	data &= ~PORT_BASED_PRIORITY_MASK;
	data |= prio << PORT_BASED_PRIORITY_SHIFT;
	FUNC1(hw, port, KS8842_PORT_CTRL_1_OFFSET, data);
}