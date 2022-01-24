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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct bnx2x*) ; 
 int EAGAIN ; 
 int EEXIST ; 
 int EINVAL ; 
 int HW_LOCK_MAX_RESOURCE_VALUE ; 
 int MISC_REG_DRIVER_CONTROL_1 ; 
 int MISC_REG_DRIVER_CONTROL_7 ; 
 int FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

int FUNC5(struct bnx2x *bp, u32 resource)
{
	u32 lock_status;
	u32 resource_bit = (1 << resource);
	int func = FUNC1(bp);
	u32 hw_lock_control_reg;
	int cnt;

	/* Validating that the resource is within range */
	if (resource > HW_LOCK_MAX_RESOURCE_VALUE) {
		FUNC0("resource(0x%x) > HW_LOCK_MAX_RESOURCE_VALUE(0x%x)\n",
		   resource, HW_LOCK_MAX_RESOURCE_VALUE);
		return -EINVAL;
	}

	if (func <= 5) {
		hw_lock_control_reg = (MISC_REG_DRIVER_CONTROL_1 + func*8);
	} else {
		hw_lock_control_reg =
				(MISC_REG_DRIVER_CONTROL_7 + (func - 6)*8);
	}

	/* Validating that the resource is not already taken */
	lock_status = FUNC2(bp, hw_lock_control_reg);
	if (lock_status & resource_bit) {
		FUNC0("lock_status 0x%x  resource_bit 0x%x\n",
		   lock_status, resource_bit);
		return -EEXIST;
	}

	/* Try for 5 second every 5ms */
	for (cnt = 0; cnt < 1000; cnt++) {
		/* Try to acquire the lock */
		FUNC3(bp, hw_lock_control_reg + 4, resource_bit);
		lock_status = FUNC2(bp, hw_lock_control_reg);
		if (lock_status & resource_bit)
			return 0;

		FUNC4(5000, 10000);
	}
	FUNC0("Timeout\n");
	return -EAGAIN;
}