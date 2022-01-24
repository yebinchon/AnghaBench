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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MDIO_MMD_VEND1 ; 
 int /*<<< orphan*/  VEND1_GLOBAL_FW_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int val, retries = 100;

	do {
		val = FUNC1(phydev, MDIO_MMD_VEND1, VEND1_GLOBAL_FW_ID);
		if (val < 0)
			return val;
		FUNC0(20);
	} while (!val && --retries);

	return val ? 0 : -ETIMEDOUT;
}