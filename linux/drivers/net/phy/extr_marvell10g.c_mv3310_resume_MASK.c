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
 int /*<<< orphan*/  MDIO_MMD_VEND2 ; 
 int /*<<< orphan*/  MV_V2_PORT_CTRL ; 
 int /*<<< orphan*/  MV_V2_PORT_CTRL_PWRDOWN ; 
 int FUNC0 (struct phy_device*,int) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int ret;

	ret = FUNC1(phydev, MDIO_MMD_VEND2, MV_V2_PORT_CTRL,
				 MV_V2_PORT_CTRL_PWRDOWN);
	if (ret)
		return ret;

	return FUNC0(phydev, true);
}