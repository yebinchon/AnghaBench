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
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int IXGBE_MSCA_ADDR_CYCLE ; 
 int IXGBE_MSCA_DEV_TYPE_SHIFT ; 
 int IXGBE_MSCA_MDI_COMMAND ; 
 int IXGBE_MSCA_OLD_PROTOCOL ; 
 int IXGBE_MSCA_PHY_ADDR_SHIFT ; 
 int IXGBE_MSCA_WRITE ; 
 int /*<<< orphan*/  IXGBE_MSRWD ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int MII_ADDR_C45 ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw, int addr,
				       int regnum, u16 val, u32 gssr)
{
	u32 hwaddr, cmd;
	s32 err;

	if (hw->mac.ops.acquire_swfw_sync(hw, gssr))
		return -EBUSY;

	FUNC1(hw, IXGBE_MSRWD, (u32)val);

	hwaddr = addr << IXGBE_MSCA_PHY_ADDR_SHIFT;
	if (regnum & MII_ADDR_C45) {
		hwaddr |= regnum & FUNC0(21, 0);
		cmd = hwaddr | IXGBE_MSCA_ADDR_CYCLE | IXGBE_MSCA_MDI_COMMAND;
	} else {
		hwaddr |= (regnum & FUNC0(5, 0)) << IXGBE_MSCA_DEV_TYPE_SHIFT;
		cmd = hwaddr | IXGBE_MSCA_OLD_PROTOCOL | IXGBE_MSCA_WRITE |
			IXGBE_MSCA_MDI_COMMAND;
	}

	/* For clause 45 this is an address cycle, for clause 22 this is the
	 * entire transaction
	 */
	err = FUNC2(hw, cmd);
	if (err < 0 || !(regnum & MII_ADDR_C45))
		goto mii_bus_write_done;

	cmd = hwaddr | IXGBE_MSCA_WRITE | IXGBE_MSCA_MDI_COMMAND;
	err = FUNC2(hw, cmd);

mii_bus_write_done:
	hw->mac.ops.release_swfw_sync(hw, gssr);
	return err;
}