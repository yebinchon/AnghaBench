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
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  TSTCNTL ; 
 int TSTCNTL_READ ; 
 int /*<<< orphan*/  TSTCNTL_READ_ADDRESS ; 
 int /*<<< orphan*/  TSTCNTL_REG_BANK_SEL ; 
 int TSTCNTL_TEST_MODE ; 
 int /*<<< orphan*/  TSTREAD1 ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev,
			      unsigned int bank, unsigned int reg)
{
	int ret;

	ret = FUNC2(phydev);
	if (ret)
		goto out;

	ret = FUNC4(phydev, TSTCNTL, TSTCNTL_READ |
			FUNC0(TSTCNTL_REG_BANK_SEL, bank) |
			TSTCNTL_TEST_MODE |
			FUNC0(TSTCNTL_READ_ADDRESS, reg));
	if (ret)
		goto out;

	ret = FUNC3(phydev, TSTREAD1);
out:
	/* Close the bank access on our way out */
	FUNC1(phydev);
	return ret;
}