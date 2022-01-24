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
 int /*<<< orphan*/  TSTCNTL ; 
 int /*<<< orphan*/  TSTCNTL_TEST_MODE ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct phy_device *phydev)
{
	int ret;

	/* Enable Analog and DSP register Bank access by
	 * toggling TSTCNTL_TEST_MODE bit in the TSTCNTL register
	 */
	ret = FUNC0(phydev, TSTCNTL, 0);
	if (ret)
		return ret;
	ret = FUNC0(phydev, TSTCNTL, TSTCNTL_TEST_MODE);
	if (ret)
		return ret;
	ret = FUNC0(phydev, TSTCNTL, 0);
	if (ret)
		return ret;
	return FUNC0(phydev, TSTCNTL, TSTCNTL_TEST_MODE);
}