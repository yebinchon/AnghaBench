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
struct TYPE_4__ {int queue_stopped; scalar_t__ xmit_more; } ;
struct xlgmac_ring {TYPE_2__ tx; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* tx_start_xmit ) (struct xlgmac_channel*,struct xlgmac_ring*) ;} ;
struct xlgmac_pdata {TYPE_1__ hw_ops; int /*<<< orphan*/  netdev; } ;
struct xlgmac_channel {int /*<<< orphan*/  queue_index; struct xlgmac_pdata* pdata; } ;

/* Variables and functions */
 int NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct xlgmac_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_channel*,struct xlgmac_ring*) ; 
 unsigned int FUNC3 (struct xlgmac_ring*) ; 

__attribute__((used)) static int FUNC4(
			struct xlgmac_channel *channel,
			struct xlgmac_ring *ring,
			unsigned int count)
{
	struct xlgmac_pdata *pdata = channel->pdata;

	if (count > FUNC3(ring)) {
		FUNC0(pdata, drv, pdata->netdev,
			   "Tx queue stopped, not enough descriptors available\n");
		FUNC1(pdata->netdev, channel->queue_index);
		ring->tx.queue_stopped = 1;

		/* If we haven't notified the hardware because of xmit_more
		 * support, tell it now
		 */
		if (ring->tx.xmit_more)
			pdata->hw_ops.tx_start_xmit(channel, ring);

		return NETDEV_TX_BUSY;
	}

	return 0;
}