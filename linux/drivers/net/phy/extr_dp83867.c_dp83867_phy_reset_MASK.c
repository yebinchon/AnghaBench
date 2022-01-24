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
 int /*<<< orphan*/  DP83867_CTRL ; 
 int /*<<< orphan*/  DP83867_SW_RESET ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int err;

	err = FUNC0(phydev, DP83867_CTRL, DP83867_SW_RESET);
	if (err < 0)
		return err;

	FUNC1(10, 20);

	return 0;
}