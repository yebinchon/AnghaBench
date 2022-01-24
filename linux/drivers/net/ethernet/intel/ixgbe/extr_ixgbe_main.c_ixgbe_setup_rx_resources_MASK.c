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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct ixgbe_rx_buffer {int dummy; } ;
struct ixgbe_ring {int count; int size; int /*<<< orphan*/ * rx_buffer_info; int /*<<< orphan*/  xdp_prog; int /*<<< orphan*/  queue_index; int /*<<< orphan*/  xdp_rxq; scalar_t__ next_to_use; scalar_t__ next_to_clean; void* desc; int /*<<< orphan*/  dma; TYPE_1__* q_vector; struct device* dev; } ;
struct ixgbe_adapter {int /*<<< orphan*/  xdp_prog; int /*<<< orphan*/  netdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int numa_node; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device*) ; 
 void* FUNC3 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct ixgbe_adapter *adapter,
			     struct ixgbe_ring *rx_ring)
{
	struct device *dev = rx_ring->dev;
	int orig_node = FUNC2(dev);
	int ring_node = NUMA_NO_NODE;
	int size;

	size = sizeof(struct ixgbe_rx_buffer) * rx_ring->count;

	if (rx_ring->q_vector)
		ring_node = rx_ring->q_vector->numa_node;

	rx_ring->rx_buffer_info = FUNC7(size, ring_node);
	if (!rx_ring->rx_buffer_info)
		rx_ring->rx_buffer_info = FUNC6(size);
	if (!rx_ring->rx_buffer_info)
		goto err;

	/* Round up to nearest 4K */
	rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
	rx_ring->size = FUNC0(rx_ring->size, 4096);

	FUNC4(dev, ring_node);
	rx_ring->desc = FUNC3(dev,
					   rx_ring->size,
					   &rx_ring->dma,
					   GFP_KERNEL);
	FUNC4(dev, orig_node);
	if (!rx_ring->desc)
		rx_ring->desc = FUNC3(dev, rx_ring->size,
						   &rx_ring->dma, GFP_KERNEL);
	if (!rx_ring->desc)
		goto err;

	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;

	/* XDP RX-queue info */
	if (FUNC8(&rx_ring->xdp_rxq, adapter->netdev,
			     rx_ring->queue_index) < 0)
		goto err;

	rx_ring->xdp_prog = adapter->xdp_prog;

	return 0;
err:
	FUNC5(rx_ring->rx_buffer_info);
	rx_ring->rx_buffer_info = NULL;
	FUNC1(dev, "Unable to allocate memory for the Rx descriptor ring\n");
	return -ENOMEM;
}