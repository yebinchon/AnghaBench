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
struct gbe_slave {int /*<<< orphan*/  slave_list; scalar_t__ phy; } ;
struct gbe_priv {scalar_t__ dummy_ndev; int /*<<< orphan*/  secondary_slaves; } ;

/* Variables and functions */
 struct gbe_slave* FUNC0 (struct gbe_priv*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct gbe_priv *gbe_dev)
{
	struct gbe_slave *slave;

	while (!FUNC3(&gbe_dev->secondary_slaves)) {
		slave = FUNC0(gbe_dev);

		if (slave->phy)
			FUNC4(slave->phy);
		FUNC2(&slave->slave_list);
	}
	if (gbe_dev->dummy_ndev)
		FUNC1(gbe_dev->dummy_ndev);
}