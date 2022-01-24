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
typedef  int u64 ;
struct phy_device {int dummy; } ;
struct aqr107_hw_stat {int size; scalar_t__ reg; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDIO_MMD_C22EXT ; 
 int U64_MAX ; 
 struct aqr107_hw_stat* aqr107_hw_stats ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u64 FUNC3(struct phy_device *phydev, int index)
{
	const struct aqr107_hw_stat *stat = aqr107_hw_stats + index;
	int len_l = FUNC1(stat->size, 16);
	int len_h = stat->size - len_l;
	u64 ret;
	int val;

	val = FUNC2(phydev, MDIO_MMD_C22EXT, stat->reg);
	if (val < 0)
		return U64_MAX;

	ret = val & FUNC0(len_l - 1, 0);
	if (len_h) {
		val = FUNC2(phydev, MDIO_MMD_C22EXT, stat->reg + 1);
		if (val < 0)
			return U64_MAX;

		ret += (val & FUNC0(len_h - 1, 0)) << 16;
	}

	return ret;
}