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
struct TYPE_2__ {scalar_t__ tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct emac_board_info {unsigned int tx_fifo_stat; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC1 (struct emac_board_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, struct emac_board_info *db,
			  unsigned int tx_status)
{
	/* One packet sent complete */
	db->tx_fifo_stat &= ~(tx_status & 3);
	if (3 == (tx_status & 3))
		dev->stats.tx_packets += 2;
	else
		dev->stats.tx_packets++;

	if (FUNC1(db))
		FUNC0(db->dev, "tx done, NSR %02x\n", tx_status);

	FUNC2(dev);
}