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
typedef  scalar_t__ u32 ;
struct ksz_hw {TYPE_2__* ksz_switch; scalar_t__ io; } ;
struct TYPE_4__ {TYPE_1__* port_cfg; } ;
struct TYPE_3__ {int member; } ;

/* Variables and functions */
 scalar_t__ KS8842_PORT_CTRL_2_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int PORT_MASK ; 
 int PORT_VLAN_MEMBERSHIP ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ksz_hw *hw, int port, u8 member)
{
	u32 addr;
	u8 data;

	FUNC0(port, addr);
	addr += KS8842_PORT_CTRL_2_OFFSET;

	data = FUNC1(hw->io + addr);
	data &= ~PORT_VLAN_MEMBERSHIP;
	data |= (member & PORT_MASK);
	FUNC2(data, hw->io + addr);

	hw->ksz_switch->port_cfg[port].member = member;
}