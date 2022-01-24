#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct macb {int caps; TYPE_1__* queues; } ;
struct ethtool_regs {int version; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_head; int /*<<< orphan*/  tx_tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMACFG ; 
 int /*<<< orphan*/  IMR ; 
 int MACB_CAPS_USRIO_DISABLED ; 
 int MACB_GREGS_VERSION ; 
 int MACB_REV_SIZE ; 
 int /*<<< orphan*/  MID ; 
 int /*<<< orphan*/  NCFGR ; 
 int /*<<< orphan*/  NCR ; 
 int /*<<< orphan*/  NSR ; 
 int /*<<< orphan*/  RBQP ; 
 int /*<<< orphan*/  RSR ; 
 int /*<<< orphan*/  TBQP ; 
 int /*<<< orphan*/  TSR ; 
 int /*<<< orphan*/  USRIO ; 
 int FUNC0 (struct macb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct macb*) ; 
 int FUNC2 (struct macb*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct macb*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC5 (struct macb*,int /*<<< orphan*/ ) ; 
 struct macb* FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, struct ethtool_regs *regs,
			  void *p)
{
	struct macb *bp = FUNC6(dev);
	unsigned int tail, head;
	u32 *regs_buff = p;

	regs->version = (FUNC3(bp, MID) & ((1 << MACB_REV_SIZE) - 1))
			| MACB_GREGS_VERSION;

	tail = FUNC5(bp, bp->queues[0].tx_tail);
	head = FUNC5(bp, bp->queues[0].tx_head);

	regs_buff[0]  = FUNC3(bp, NCR);
	regs_buff[1]  = FUNC2(bp, NCFGR);
	regs_buff[2]  = FUNC3(bp, NSR);
	regs_buff[3]  = FUNC3(bp, TSR);
	regs_buff[4]  = FUNC3(bp, RBQP);
	regs_buff[5]  = FUNC3(bp, TBQP);
	regs_buff[6]  = FUNC3(bp, RSR);
	regs_buff[7]  = FUNC3(bp, IMR);

	regs_buff[8]  = tail;
	regs_buff[9]  = head;
	regs_buff[10] = FUNC4(&bp->queues[0], tail);
	regs_buff[11] = FUNC4(&bp->queues[0], head);

	if (!(bp->caps & MACB_CAPS_USRIO_DISABLED))
		regs_buff[12] = FUNC2(bp, USRIO);
	if (FUNC1(bp))
		regs_buff[13] = FUNC0(bp, DMACFG);
}