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
struct i40e_vsi {unsigned int num_queue_pairs; struct i40e_ring** tx_rings; struct net_device* netdev; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int prev_pkt_ctr; } ;
struct TYPE_3__ {int packets; } ;
struct i40e_ring {TYPE_2__ tx_stats; int /*<<< orphan*/  q_vector; TYPE_1__ stats; scalar_t__ desc; } ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  __I40E_VSI_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_vsi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i40e_ring*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct i40e_vsi *vsi)
{
	struct i40e_ring *tx_ring = NULL;
	struct net_device *netdev;
	unsigned int i;
	int packets;

	if (!vsi)
		return;

	if (FUNC4(__I40E_VSI_DOWN, vsi->state))
		return;

	netdev = vsi->netdev;
	if (!netdev)
		return;

	if (!FUNC2(netdev))
		return;

	for (i = 0; i < vsi->num_queue_pairs; i++) {
		tx_ring = vsi->tx_rings[i];
		if (tx_ring && tx_ring->desc) {
			/* If packet counter has not changed the queue is
			 * likely stalled, so force an interrupt for this
			 * queue.
			 *
			 * prev_pkt_ctr would be negative if there was no
			 * pending work.
			 */
			packets = tx_ring->stats.packets & INT_MAX;
			if (tx_ring->tx_stats.prev_pkt_ctr == packets) {
				FUNC0(vsi, tx_ring->q_vector);
				continue;
			}

			/* Memory barrier between read of packet count and call
			 * to i40e_get_tx_pending()
			 */
			FUNC3();
			tx_ring->tx_stats.prev_pkt_ctr =
			    FUNC1(tx_ring, true) ? packets : -1;
		}
	}
}