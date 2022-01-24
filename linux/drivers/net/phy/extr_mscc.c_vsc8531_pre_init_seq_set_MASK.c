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
struct reg_val {int member_0; int member_1; int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;
struct phy_device {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct reg_val const*) ; 
 int /*<<< orphan*/  MSCC_PHY_EXT_CNTL_STATUS ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_STANDARD ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_TEST ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_TR ; 
 int /*<<< orphan*/  MSCC_PHY_TEST_PAGE_24 ; 
 int /*<<< orphan*/  MSCC_PHY_TEST_PAGE_5 ; 
 int /*<<< orphan*/  MSCC_PHY_TEST_PAGE_8 ; 
 int SMI_BROADCAST_WR_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct phy_device*,int,int) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct phy_device *phydev)
{
	int rc;
	const struct reg_val init_seq[] = {
		{0x0f90, 0x00688980},
		{0x0696, 0x00000003},
		{0x07fa, 0x0050100f},
		{0x1686, 0x00000004},
	};
	unsigned int i;
	int oldpage;

	rc = FUNC3(phydev, MSCC_PHY_PAGE_STANDARD,
			      MSCC_PHY_EXT_CNTL_STATUS, SMI_BROADCAST_WR_EN,
			      SMI_BROADCAST_WR_EN);
	if (rc < 0)
		return rc;
	rc = FUNC3(phydev, MSCC_PHY_PAGE_TEST,
			      MSCC_PHY_TEST_PAGE_24, 0, 0x0400);
	if (rc < 0)
		return rc;
	rc = FUNC3(phydev, MSCC_PHY_PAGE_TEST,
			      MSCC_PHY_TEST_PAGE_5, 0x0a00, 0x0e00);
	if (rc < 0)
		return rc;
	rc = FUNC3(phydev, MSCC_PHY_PAGE_TEST,
			      MSCC_PHY_TEST_PAGE_8, 0x8000, 0x8000);
	if (rc < 0)
		return rc;

	FUNC1(&phydev->lock);
	oldpage = FUNC5(phydev, MSCC_PHY_PAGE_TR);
	if (oldpage < 0)
		goto out_unlock;

	for (i = 0; i < FUNC0(init_seq); i++)
		FUNC6(phydev, init_seq[i].reg, init_seq[i].val);

out_unlock:
	oldpage = FUNC4(phydev, oldpage, oldpage);
	FUNC2(&phydev->lock);

	return oldpage;
}