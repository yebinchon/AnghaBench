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
struct net_device {int dummy; } ;
struct emac_board_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_board_info*) ; 
 struct emac_board_info* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct emac_board_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
	struct emac_board_info *db = FUNC3(dev);
	unsigned long flags;

	if (FUNC4(db))
		FUNC0(db->dev, "tx time out.\n");

	/* Save previous register address */
	FUNC8(&db->lock, flags);

	FUNC5(dev);
	FUNC2(db);
	FUNC1(dev);
	/* We can accept TX packets again */
	FUNC6(dev);
	FUNC7(dev);

	/* Restore previous register address */
	FUNC9(&db->lock, flags);
}