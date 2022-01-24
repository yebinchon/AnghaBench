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
 int /*<<< orphan*/  MSCC_PHY_PAGE_TR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct phy_device*,int,int) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	const struct reg_val init_eee[] = {
		{0x0f82, 0x0012b00a},
		{0x1686, 0x00000004},
		{0x168c, 0x00d2c46f},
		{0x17a2, 0x00000620},
		{0x16a0, 0x00eeffdd},
		{0x16a6, 0x00071448},
		{0x16a4, 0x0013132f},
		{0x16a8, 0x00000000},
		{0x0ffc, 0x00c0a028},
		{0x0fe8, 0x0091b06c},
		{0x0fea, 0x00041600},
		{0x0f80, 0x00000af4},
		{0x0fec, 0x00901809},
		{0x0fee, 0x0000a6a1},
		{0x0ffe, 0x00b01007},
		{0x16b0, 0x00eeff00},
		{0x16b2, 0x00007000},
		{0x16b4, 0x00000814},
	};
	unsigned int i;
	int oldpage;

	FUNC1(&phydev->lock);
	oldpage = FUNC4(phydev, MSCC_PHY_PAGE_TR);
	if (oldpage < 0)
		goto out_unlock;

	for (i = 0; i < FUNC0(init_eee); i++)
		FUNC5(phydev, init_eee[i].reg, init_eee[i].val);

out_unlock:
	oldpage = FUNC3(phydev, oldpage, oldpage);
	FUNC2(&phydev->lock);

	return oldpage;
}