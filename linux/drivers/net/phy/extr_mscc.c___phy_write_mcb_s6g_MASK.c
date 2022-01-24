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
typedef  int u8 ;
typedef  int u32 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PHY_MCB_TARGET ; 
 int /*<<< orphan*/  PROC_CMD_NCOMPLETED_TIMEOUT_MS ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev, u32 reg, u8 mcb,
			       u32 op)
{
	unsigned long deadline;
	u32 val;
	int ret;

	ret = FUNC4(phydev, PHY_MCB_TARGET, reg,
					 op | (1 << mcb));
	if (ret)
		return -EINVAL;

	deadline = jiffies + FUNC0(PROC_CMD_NCOMPLETED_TIMEOUT_MS);
	do {
		FUNC2(500, 1000);
		val = FUNC3(phydev, PHY_MCB_TARGET, reg);

		if (val == 0xffffffff)
			return -EIO;

	} while (FUNC1(jiffies, deadline) && (val & op));

	if (val & op)
		return -ETIMEDOUT;

	return 0;
}