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
typedef  int /*<<< orphan*/  u32 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 

int FUNC2(struct phy_device *phydev, u32 max_speed)
{
	int err;

	err = FUNC0(phydev, max_speed);
	if (err)
		return err;

	FUNC1(phydev);

	return 0;
}