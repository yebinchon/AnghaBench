#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {scalar_t__ command; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;

/* Variables and functions */
 int CMD_RXOFF ; 
 int CMD_TXOFF ; 
 int /*<<< orphan*/  REG_COMMAND ; 
 scalar_t__ REG_CONFIG2 ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int STAT_RXON ; 
 int STAT_TXON ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 TYPE_2__* FUNC7 (struct net_device*) ; 

__attribute__((used)) static int
FUNC8(struct net_device *dev)
{
	FUNC6(dev);

	FUNC1(dev->irq);

	FUNC4(CMD_RXOFF|CMD_TXOFF, REG_COMMAND);
	FUNC7(dev)->regs.command = 0;
	while (FUNC2(REG_STATUS) & (STAT_RXON|STAT_TXON))
		FUNC0();
	FUNC3(0x80, REG_CONFIG2 + 4);
	FUNC4(0, REG_COMMAND);

	FUNC5(dev->irq, dev);

	return 0;
}