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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct board_info {int /*<<< orphan*/  phy_poll; int /*<<< orphan*/  mii; scalar_t__ dbug_cnt; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_GPR ; 
 int EAGAIN ; 
 unsigned int IRQF_SHARED ; 
 unsigned int IRQF_TRIGGER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  dm9000_interrupt ; 
 int /*<<< orphan*/  FUNC3 (struct board_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct board_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct board_info* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct board_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct board_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC14(struct net_device *dev)
{
	struct board_info *db = FUNC8(dev);
	unsigned int irq_flags = FUNC5(dev->irq);

	if (FUNC9(db))
		FUNC0(db->dev, "enabling %s\n", dev->name);

	/* If there is no IRQ type specified, tell the user that this is a
	 * problem
	 */
	if (irq_flags == IRQF_TRIGGER_NONE)
		FUNC1(db->dev, "WARNING: no IRQ resource flags set.\n");

	irq_flags |= IRQF_SHARED;

	/* GPIO0 on pre-activate PHY, Reg 1F is not set by reset */
	FUNC4(db, DM9000_GPR, 0);	/* REG_1F bit0 activate phyxcer */
	FUNC6(1); /* delay needs by DM9000B */

	/* Initialize DM9000 board */
	FUNC2(dev);

	if (FUNC12(dev->irq, dm9000_interrupt, irq_flags, dev->name, dev))
		return -EAGAIN;
	/* Now that we have an interrupt handler hooked up we can unmask
	 * our interrupts
	 */
	FUNC3(db);

	/* Init driver variable */
	db->dbug_cnt = 0;

	FUNC7(&db->mii, FUNC10(db), 1);
	FUNC11(dev);

	/* Poll initial link status */
	FUNC13(&db->phy_poll, 1);

	return 0;
}