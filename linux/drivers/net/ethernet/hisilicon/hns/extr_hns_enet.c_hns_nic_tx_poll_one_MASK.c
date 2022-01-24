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
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;
struct hns_nic_ring_data {int /*<<< orphan*/  queue_index; TYPE_1__ napi; struct hnae_ring* ring; } ;
struct hns_nic_priv {int /*<<< orphan*/  state; scalar_t__ link; } ;
struct TYPE_4__ {int tx_pkts; int tx_bytes; int /*<<< orphan*/  restart_queue; int /*<<< orphan*/  io_err_cnt; } ;
struct hnae_ring {int next_to_clean; int max_desc_num_per_pkt; TYPE_2__ stats; int /*<<< orphan*/ * desc_cb; int /*<<< orphan*/  next_to_use; scalar_t__ io_base; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NIC_STATE_DOWN ; 
 scalar_t__ RCB_REG_HEAD ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_ring*,int*,int*) ; 
 scalar_t__ FUNC1 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,int /*<<< orphan*/ ,int) ; 
 struct netdev_queue* FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct hns_nic_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*,int,int) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (scalar_t__) ; 
 int FUNC13 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct hns_nic_ring_data *ring_data,
			       int budget, void *v)
{
	struct hnae_ring *ring = ring_data->ring;
	struct net_device *ndev = ring_data->napi.dev;
	struct netdev_queue *dev_queue;
	struct hns_nic_priv *priv = FUNC5(ndev);
	int head;
	int bytes, pkts;

	head = FUNC12(ring->io_base + RCB_REG_HEAD);
	FUNC14(); /* make sure head is ready before touch any data */

	if (FUNC1(ring) || head == ring->next_to_clean)
		return 0; /* no data to poll */

	if (!FUNC2(ring, head)) {
		FUNC3(ndev, "wrong head (%d, %d-%d)\n", head,
			   ring->next_to_use, ring->next_to_clean);
		ring->stats.io_err_cnt++;
		return -EIO;
	}

	bytes = 0;
	pkts = 0;
	while (head != ring->next_to_clean) {
		FUNC0(ring, &bytes, &pkts);
		/* issue prefetch for next Tx descriptor */
		FUNC11(&ring->desc_cb[ring->next_to_clean]);
	}
	/* update tx ring statistics. */
	ring->stats.tx_pkts += pkts;
	ring->stats.tx_bytes += bytes;

	dev_queue = FUNC4(ndev, ring_data->queue_index);
	FUNC6(dev_queue, pkts, bytes);

	if (FUNC17(priv->link && !FUNC7(ndev)))
		FUNC8(ndev);

	if (FUNC17(pkts && FUNC7(ndev) &&
		     (FUNC13(ring) >= ring->max_desc_num_per_pkt * 2))) {
		/* Make sure that anybody stopping the queue after this
		 * sees the new next_to_clean.
		 */
		FUNC15();
		if (FUNC9(dev_queue) &&
		    !FUNC16(NIC_STATE_DOWN, &priv->state)) {
			FUNC10(dev_queue);
			ring->stats.restart_queue++;
		}
	}
	return 0;
}