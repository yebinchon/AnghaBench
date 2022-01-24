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
struct ixgbevf_ring {int queue_index; int reg_idx; int /*<<< orphan*/  count; struct ixgbevf_q_vector* q_vector; int /*<<< orphan*/  netdev; int /*<<< orphan*/ * dev; } ;
struct ixgbevf_q_vector {int v_idx; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; struct ixgbevf_ring* ring; struct ixgbevf_adapter* adapter; int /*<<< orphan*/  napi; } ;
struct ixgbevf_adapter {struct ixgbevf_ring** rx_ring; int /*<<< orphan*/  rx_ring_count; int /*<<< orphan*/  netdev; TYPE_1__* pdev; struct ixgbevf_ring** xdp_ring; int /*<<< orphan*/  tx_ring_count; struct ixgbevf_ring** tx_ring; struct ixgbevf_q_vector** q_vector; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_ring*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ixgbevf_poll ; 
 struct ixgbevf_q_vector* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_ring*) ; 

__attribute__((used)) static int FUNC4(struct ixgbevf_adapter *adapter, int v_idx,
				  int txr_count, int txr_idx,
				  int xdp_count, int xdp_idx,
				  int rxr_count, int rxr_idx)
{
	struct ixgbevf_q_vector *q_vector;
	int reg_idx = txr_idx + xdp_idx;
	struct ixgbevf_ring *ring;
	int ring_count, size;

	ring_count = txr_count + xdp_count + rxr_count;
	size = sizeof(*q_vector) + (sizeof(*ring) * ring_count);

	/* allocate q_vector and rings */
	q_vector = FUNC1(size, GFP_KERNEL);
	if (!q_vector)
		return -ENOMEM;

	/* initialize NAPI */
	FUNC2(adapter->netdev, &q_vector->napi, ixgbevf_poll, 64);

	/* tie q_vector and adapter together */
	adapter->q_vector[v_idx] = q_vector;
	q_vector->adapter = adapter;
	q_vector->v_idx = v_idx;

	/* initialize pointer to rings */
	ring = q_vector->ring;

	while (txr_count) {
		/* assign generic ring traits */
		ring->dev = &adapter->pdev->dev;
		ring->netdev = adapter->netdev;

		/* configure backlink on ring */
		ring->q_vector = q_vector;

		/* update q_vector Tx values */
		FUNC0(ring, &q_vector->tx);

		/* apply Tx specific ring traits */
		ring->count = adapter->tx_ring_count;
		ring->queue_index = txr_idx;
		ring->reg_idx = reg_idx;

		/* assign ring to adapter */
		 adapter->tx_ring[txr_idx] = ring;

		/* update count and index */
		txr_count--;
		txr_idx++;
		reg_idx++;

		/* push pointer to next ring */
		ring++;
	}

	while (xdp_count) {
		/* assign generic ring traits */
		ring->dev = &adapter->pdev->dev;
		ring->netdev = adapter->netdev;

		/* configure backlink on ring */
		ring->q_vector = q_vector;

		/* update q_vector Tx values */
		FUNC0(ring, &q_vector->tx);

		/* apply Tx specific ring traits */
		ring->count = adapter->tx_ring_count;
		ring->queue_index = xdp_idx;
		ring->reg_idx = reg_idx;
		FUNC3(ring);

		/* assign ring to adapter */
		adapter->xdp_ring[xdp_idx] = ring;

		/* update count and index */
		xdp_count--;
		xdp_idx++;
		reg_idx++;

		/* push pointer to next ring */
		ring++;
	}

	while (rxr_count) {
		/* assign generic ring traits */
		ring->dev = &adapter->pdev->dev;
		ring->netdev = adapter->netdev;

		/* configure backlink on ring */
		ring->q_vector = q_vector;

		/* update q_vector Rx values */
		FUNC0(ring, &q_vector->rx);

		/* apply Rx specific ring traits */
		ring->count = adapter->rx_ring_count;
		ring->queue_index = rxr_idx;
		ring->reg_idx = rxr_idx;

		/* assign ring to adapter */
		adapter->rx_ring[rxr_idx] = ring;

		/* update count and index */
		rxr_count--;
		rxr_idx++;

		/* push pointer to next ring */
		ring++;
	}

	return 0;
}