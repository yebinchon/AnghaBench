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
struct phylink {int /*<<< orphan*/  resolve; int /*<<< orphan*/  state_mutex; struct phy_device* phydev; } ;
struct phy_device {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 

void FUNC5(struct phylink *pl)
{
	struct phy_device *phy;

	FUNC0();

	phy = pl->phydev;
	if (phy) {
		FUNC2(&phy->lock);
		FUNC2(&pl->state_mutex);
		pl->phydev = NULL;
		FUNC3(&pl->state_mutex);
		FUNC3(&phy->lock);
		FUNC1(&pl->resolve);

		FUNC4(phy);
	}
}