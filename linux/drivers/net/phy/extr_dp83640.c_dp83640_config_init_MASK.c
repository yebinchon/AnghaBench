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
struct phy_device {struct dp83640_private* priv; } ;
struct dp83640_private {struct dp83640_clock* clock; } ;
struct dp83640_clock {int /*<<< orphan*/  extreg_lock; int /*<<< orphan*/  page; int /*<<< orphan*/  phylist; scalar_t__ chosen; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE4 ; 
 int /*<<< orphan*/  PTP_CTL ; 
 int /*<<< orphan*/  PTP_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dp83640_clock*) ; 

__attribute__((used)) static int FUNC7(struct phy_device *phydev)
{
	struct dp83640_private *dp83640 = phydev->priv;
	struct dp83640_clock *clock = dp83640->clock;

	if (clock->chosen && !FUNC3(&clock->phylist))
		FUNC6(clock);
	else {
		FUNC4(&clock->extreg_lock);
		FUNC0(phydev, clock->page, 1);
		FUNC5(&clock->extreg_lock);
	}

	FUNC1(phydev, true);

	FUNC4(&clock->extreg_lock);
	FUNC2(0, phydev, PAGE4, PTP_CTL, PTP_ENABLE);
	FUNC5(&clock->extreg_lock);

	return 0;
}