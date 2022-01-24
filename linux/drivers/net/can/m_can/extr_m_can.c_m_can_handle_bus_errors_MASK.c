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
struct TYPE_2__ {int ctrlmode; } ;
struct m_can_classdev {TYPE_1__ can; } ;

/* Variables and functions */
 int CAN_CTRLMODE_BERR_REPORTING ; 
 int IR_RF0L ; 
 int LEC_UNUSED ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct net_device*,int) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 struct m_can_classdev* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, u32 irqstatus,
				   u32 psr)
{
	struct m_can_classdev *cdev = FUNC4(dev);
	int work_done = 0;

	if (irqstatus & IR_RF0L)
		work_done += FUNC2(dev);

	/* handle lec errors on the bus */
	if ((cdev->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING) &&
	    FUNC0(psr))
		work_done += FUNC1(dev, psr & LEC_UNUSED);

	/* other unproccessed error interrupts */
	FUNC3(dev, irqstatus);

	return work_done;
}