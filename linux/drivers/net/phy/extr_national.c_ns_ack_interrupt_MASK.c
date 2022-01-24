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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP83865_INT_CLEAR ; 
 int /*<<< orphan*/  DP83865_INT_STATUS ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int ret = FUNC0(phydev, DP83865_INT_STATUS);
	if (ret < 0)
		return ret;

	/* Clear the interrupt status bit by writing a “1”
	 * to the corresponding bit in INT_CLEAR (2:0 are reserved) */
	ret = FUNC1(phydev, DP83865_INT_CLEAR, ret & ~0x7);

	return ret;
}