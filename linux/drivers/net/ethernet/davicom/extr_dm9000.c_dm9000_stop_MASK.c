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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct board_info {int /*<<< orphan*/  phy_poll; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct board_info* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct board_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int
FUNC8(struct net_device *ndev)
{
	struct board_info *db = FUNC4(ndev);

	if (FUNC6(db))
		FUNC1(db->dev, "shutting down %s\n", ndev->name);

	FUNC0(&db->phy_poll);

	FUNC7(ndev);
	FUNC5(ndev);

	/* free interrupt */
	FUNC3(ndev->irq, ndev);

	FUNC2(ndev);

	return 0;
}