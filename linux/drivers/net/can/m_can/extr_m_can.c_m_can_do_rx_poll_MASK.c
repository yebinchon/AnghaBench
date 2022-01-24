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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct m_can_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_RX ; 
 int /*<<< orphan*/  M_CAN_RXF0S ; 
 int RXFS_FFL_MASK ; 
 int RXFS_RFL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct m_can_classdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct m_can_classdev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int quota)
{
	struct m_can_classdev *cdev = FUNC4(dev);
	u32 pkts = 0;
	u32 rxfs;

	rxfs = FUNC1(cdev, M_CAN_RXF0S);
	if (!(rxfs & RXFS_FFL_MASK)) {
		FUNC3(dev, "no messages in fifo0\n");
		return 0;
	}

	while ((rxfs & RXFS_FFL_MASK) && (quota > 0)) {
		if (rxfs & RXFS_RFL)
			FUNC5(dev, "Rx FIFO 0 Message Lost\n");

		FUNC2(dev, rxfs);

		quota--;
		pkts++;
		rxfs = FUNC1(cdev, M_CAN_RXF0S);
	}

	if (pkts)
		FUNC0(dev, CAN_LED_EVENT_RX);

	return pkts;
}