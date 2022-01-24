#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct slave {int /*<<< orphan*/  dev; } ;
struct bonding {TYPE_1__* dev; } ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct bonding *bond, struct slave *new_active,
			      struct slave *old_active)
{
	if (old_active) {
		if (bond->dev->flags & IFF_PROMISC)
			FUNC3(old_active->dev, -1);

		if (bond->dev->flags & IFF_ALLMULTI)
			FUNC2(old_active->dev, -1);

		FUNC0(bond->dev, old_active->dev);
	}

	if (new_active) {
		/* FIXME: Signal errors upstream. */
		if (bond->dev->flags & IFF_PROMISC)
			FUNC3(new_active->dev, 1);

		if (bond->dev->flags & IFF_ALLMULTI)
			FUNC2(new_active->dev, 1);

		FUNC5(bond->dev);
		FUNC4(new_active->dev, bond->dev);
		FUNC1(new_active->dev, bond->dev);
		FUNC6(bond->dev);
	}
}