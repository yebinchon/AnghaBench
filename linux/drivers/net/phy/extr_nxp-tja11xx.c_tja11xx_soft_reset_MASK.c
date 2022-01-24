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
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int ret;

	ret = FUNC1(phydev);
	if (ret)
		return ret;

	return FUNC0(phydev);
}