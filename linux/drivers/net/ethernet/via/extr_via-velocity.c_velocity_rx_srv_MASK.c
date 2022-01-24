#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int curr; TYPE_2__* info; struct rx_desc* ring; } ;
struct TYPE_9__ {int numrx; } ;
struct velocity_info {TYPE_5__ rx; TYPE_4__ options; TYPE_1__* netdev; } ;
struct TYPE_8__ {int len; int RSR; } ;
struct rx_desc {int /*<<< orphan*/  size; TYPE_3__ rdesc0; } ;
struct net_device_stats {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; } ;
struct TYPE_7__ {int /*<<< orphan*/  skb; } ;
struct TYPE_6__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int OWNED_BY_NIC ; 
 int RSR_CE ; 
 int RSR_CRC ; 
 int RSR_FAE ; 
 int RSR_RL ; 
 int RSR_RXOK ; 
 int /*<<< orphan*/  RX_INTEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device_stats*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct velocity_info*) ; 
 scalar_t__ FUNC3 (struct velocity_info*,int) ; 
 scalar_t__ FUNC4 (struct velocity_info*) ; 

__attribute__((used)) static int FUNC5(struct velocity_info *vptr, int budget_left)
{
	struct net_device_stats *stats = &vptr->netdev->stats;
	int rd_curr = vptr->rx.curr;
	int works = 0;

	while (works < budget_left) {
		struct rx_desc *rd = vptr->rx.ring + rd_curr;

		if (!vptr->rx.info[rd_curr].skb)
			break;

		if (rd->rdesc0.len & OWNED_BY_NIC)
			break;

		FUNC1();

		/*
		 *	Don't drop CE or RL error frame although RXOK is off
		 */
		if (rd->rdesc0.RSR & (RSR_RXOK | RSR_CE | RSR_RL)) {
			if (FUNC3(vptr, rd_curr) < 0)
				stats->rx_dropped++;
		} else {
			if (rd->rdesc0.RSR & RSR_CRC)
				stats->rx_crc_errors++;
			if (rd->rdesc0.RSR & RSR_FAE)
				stats->rx_frame_errors++;

			stats->rx_dropped++;
		}

		rd->size |= RX_INTEN;

		rd_curr++;
		if (rd_curr >= vptr->options.numrx)
			rd_curr = 0;
		works++;
	}

	vptr->rx.curr = rd_curr;

	if ((works > 0) && (FUNC4(vptr) > 0))
		FUNC2(vptr);

	FUNC0(stats);
	return works;
}