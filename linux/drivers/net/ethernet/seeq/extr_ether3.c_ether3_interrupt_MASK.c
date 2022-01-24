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
struct net_device {int dummy; } ;
typedef  unsigned int irqreturn_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;

/* Variables and functions */
 int CMD_ACKINTRX ; 
 int CMD_ACKINTTX ; 
 int DEBUG_INT ; 
 unsigned int IRQ_HANDLED ; 
 unsigned int IRQ_NONE ; 
 int /*<<< orphan*/  REG_COMMAND ; 
 int /*<<< orphan*/  REG_STATUS ; 
 unsigned int STAT_INTRX ; 
 unsigned int STAT_INTTX ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int net_debug ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_2__* FUNC5 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t
FUNC6(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	unsigned int status, handled = IRQ_NONE;

#if NET_DEBUG > 1
	if(net_debug & DEBUG_INT)
		printk("eth3irq: %d ", irq);
#endif

	status = FUNC0(REG_STATUS);

	if (status & STAT_INTRX) {
		FUNC1(CMD_ACKINTRX | FUNC5(dev)->regs.command, REG_COMMAND);
		FUNC2(dev, 12);
		handled = IRQ_HANDLED;
	}

	if (status & STAT_INTTX) {
		FUNC1(CMD_ACKINTTX | FUNC5(dev)->regs.command, REG_COMMAND);
		FUNC3(dev);
		handled = IRQ_HANDLED;
	}

#if NET_DEBUG > 1
	if(net_debug & DEBUG_INT)
		printk("done\n");
#endif
	return handled;
}