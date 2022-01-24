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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct ixgbevf_rx_buffer {int dummy; } ;
struct ixgbevf_ring {int count; int size; int /*<<< orphan*/  dev; int /*<<< orphan*/ * rx_buffer_info; int /*<<< orphan*/  xdp_prog; int /*<<< orphan*/  queue_index; int /*<<< orphan*/  xdp_rxq; int /*<<< orphan*/  desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  syncp; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  xdp_prog; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct ixgbevf_adapter *adapter,
			       struct ixgbevf_ring *rx_ring)
{
	int size;

	size = sizeof(struct ixgbevf_rx_buffer) * rx_ring->count;
	rx_ring->rx_buffer_info = FUNC5(size);
	if (!rx_ring->rx_buffer_info)
		goto err;

	FUNC3(&rx_ring->syncp);

	/* Round up to nearest 4K */
	rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
	rx_ring->size = FUNC0(rx_ring->size, 4096);

	rx_ring->desc = FUNC2(rx_ring->dev, rx_ring->size,
					   &rx_ring->dma, GFP_KERNEL);

	if (!rx_ring->desc)
		goto err;

	/* XDP RX-queue info */
	if (FUNC6(&rx_ring->xdp_rxq, adapter->netdev,
			     rx_ring->queue_index) < 0)
		goto err;

	rx_ring->xdp_prog = adapter->xdp_prog;

	return 0;
err:
	FUNC4(rx_ring->rx_buffer_info);
	rx_ring->rx_buffer_info = NULL;
	FUNC1(rx_ring->dev, "Unable to allocate memory for the Rx descriptor ring\n");
	return -ENOMEM;
}