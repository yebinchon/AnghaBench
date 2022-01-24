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
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct emac_board_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  emac_interrupt ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_board_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct emac_board_info* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct emac_board_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct emac_board_info *db = FUNC6(dev);
	int ret;

	if (FUNC7(db))
		FUNC0(db->dev, "enabling %s\n", dev->name);

	if (FUNC10(dev->irq, &emac_interrupt, 0, dev->name, dev))
		return -EAGAIN;

	/* Initialize EMAC board */
	FUNC3(db);
	FUNC1(dev);

	ret = FUNC2(dev);
	if (ret < 0) {
		FUNC4(dev->irq, dev);
		FUNC5(dev, "cannot probe MDIO bus\n");
		return ret;
	}

	FUNC9(dev->phydev);
	FUNC8(dev);

	return 0;
}