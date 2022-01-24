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
struct brcmnand_controller {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMNAND_INTFC_STATUS ; 
 int ETIMEDOUT ; 
 unsigned long NAND_POLL_STATUS_TIMEOUT_MS ; 
 int FUNC0 (struct brcmnand_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct brcmnand_controller *ctrl,
				    u32 mask, u32 expected_val,
				    unsigned long timeout_ms)
{
	unsigned long limit;
	u32 val;

	if (!timeout_ms)
		timeout_ms = NAND_POLL_STATUS_TIMEOUT_MS;

	limit = jiffies + FUNC3(timeout_ms);
	do {
		val = FUNC0(ctrl, BRCMNAND_INTFC_STATUS);
		if ((val & mask) == expected_val)
			return 0;

		FUNC1();
	} while (FUNC4(limit, jiffies));

	FUNC2(ctrl->dev, "timeout on status poll (expected %x got %x)\n",
		 expected_val, val & mask);

	return -ETIMEDOUT;
}