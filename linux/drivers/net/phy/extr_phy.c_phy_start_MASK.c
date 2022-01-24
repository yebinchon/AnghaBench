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
struct phy_device {scalar_t__ state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ PHY_HALTED ; 
 scalar_t__ PHY_READY ; 
 scalar_t__ PHY_UP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct phy_device *phydev)
{
	FUNC2(&phydev->lock);

	if (phydev->state != PHY_READY && phydev->state != PHY_HALTED) {
		FUNC0(1, "called from state %s\n",
		     FUNC5(phydev->state));
		goto out;
	}

	/* if phy was suspended, bring the physical link up again */
	FUNC1(phydev);

	phydev->state = PHY_UP;

	FUNC4(phydev);
out:
	FUNC3(&phydev->lock);
}