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
 int /*<<< orphan*/  MII_DP83822_MISR1 ; 
 int /*<<< orphan*/  MII_DP83822_MISR2 ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct phy_device *phydev)
{
	int err;

	err = FUNC0(phydev, MII_DP83822_MISR1);
	if (err < 0)
		return err;

	err = FUNC0(phydev, MII_DP83822_MISR2);
	if (err < 0)
		return err;

	return 0;
}