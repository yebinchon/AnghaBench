#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct phy_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int ETH_GSTRING_LEN ; 
 int FUNC0 (struct phy_device*) ; 
 TYPE_1__* marvell_hw_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct phy_device *phydev, u8 *data)
{
	int count = FUNC0(phydev);
	int i;

	for (i = 0; i < count; i++) {
		FUNC1(data + i * ETH_GSTRING_LEN,
			marvell_hw_stats[i].string, ETH_GSTRING_LEN);
	}
}