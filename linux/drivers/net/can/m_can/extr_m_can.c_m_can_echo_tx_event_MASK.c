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
struct net_device_stats {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
struct m_can_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAN_TXEFA ; 
 int /*<<< orphan*/  M_CAN_TXEFS ; 
 int TXEFA_EFAI_MASK ; 
 int TXEFA_EFAI_SHIFT ; 
 int TXEFS_EFFL_MASK ; 
 int TXEFS_EFFL_SHIFT ; 
 int TXEFS_EFGI_MASK ; 
 int TXEFS_EFGI_SHIFT ; 
 unsigned int TX_EVENT_MM_MASK ; 
 unsigned int TX_EVENT_MM_SHIFT ; 
 scalar_t__ FUNC0 (struct net_device*,unsigned int) ; 
 int FUNC1 (struct m_can_classdev*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct m_can_classdev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct m_can_classdev*,int /*<<< orphan*/ ,int) ; 
 struct m_can_classdev* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	u32 txe_count = 0;
	u32 m_can_txefs;
	u32 fgi = 0;
	int i = 0;
	unsigned int msg_mark;

	struct m_can_classdev *cdev = FUNC4(dev);
	struct net_device_stats *stats = &dev->stats;

	/* read tx event fifo status */
	m_can_txefs = FUNC1(cdev, M_CAN_TXEFS);

	/* Get Tx Event fifo element count */
	txe_count = (m_can_txefs & TXEFS_EFFL_MASK)
			>> TXEFS_EFFL_SHIFT;

	/* Get and process all sent elements */
	for (i = 0; i < txe_count; i++) {
		/* retrieve get index */
		fgi = (FUNC1(cdev, M_CAN_TXEFS) & TXEFS_EFGI_MASK)
			>> TXEFS_EFGI_SHIFT;

		/* get message marker */
		msg_mark = (FUNC2(cdev, fgi, 4) &
			    TX_EVENT_MM_MASK) >> TX_EVENT_MM_SHIFT;

		/* ack txe element */
		FUNC3(cdev, M_CAN_TXEFA, (TXEFA_EFAI_MASK &
						(fgi << TXEFA_EFAI_SHIFT)));

		/* update stats */
		stats->tx_bytes += FUNC0(dev, msg_mark);
		stats->tx_packets++;
	}
}