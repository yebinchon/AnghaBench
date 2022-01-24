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
typedef  int /*<<< orphan*/  u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT803X_DEBUG_ADDR ; 
 int /*<<< orphan*/  AT803X_DEBUG_DATA ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev, u16 reg)
{
	int ret;

	ret = FUNC1(phydev, AT803X_DEBUG_ADDR, reg);
	if (ret < 0)
		return ret;

	return FUNC0(phydev, AT803X_DEBUG_DATA);
}