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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  (* read ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_bus_info {int func; int lan_id; int instance_id; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_2__ eeprom; struct ixgbe_bus_info bus; } ;

/* Variables and functions */
 scalar_t__ IXGBE_DEV_ID_X550EM_A_SFP ; 
 int /*<<< orphan*/  IXGBE_EEPROM_CTRL_4 ; 
 int IXGBE_EE_CTRL_4_INST_ID ; 
 int IXGBE_EE_CTRL_4_INST_ID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int IXGBE_FACTPS_LFS ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_STATUS ; 
 int IXGBE_STATUS_LAN_ID ; 
 int IXGBE_STATUS_LAN_ID_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int*) ; 

void FUNC3(struct ixgbe_hw *hw)
{
	struct ixgbe_bus_info *bus = &hw->bus;
	u16 ee_ctrl_4;
	u32 reg;

	reg = FUNC1(hw, IXGBE_STATUS);
	bus->func = (reg & IXGBE_STATUS_LAN_ID) >> IXGBE_STATUS_LAN_ID_SHIFT;
	bus->lan_id = bus->func;

	/* check for a port swap */
	reg = FUNC1(hw, FUNC0(hw));
	if (reg & IXGBE_FACTPS_LFS)
		bus->func ^= 0x1;

	/* Get MAC instance from EEPROM for configuring CS4227 */
	if (hw->device_id == IXGBE_DEV_ID_X550EM_A_SFP) {
		hw->eeprom.ops.read(hw, IXGBE_EEPROM_CTRL_4, &ee_ctrl_4);
		bus->instance_id = (ee_ctrl_4 & IXGBE_EE_CTRL_4_INST_ID) >>
				   IXGBE_EE_CTRL_4_INST_ID_SHIFT;
	}
}