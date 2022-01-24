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
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
struct ixgbe_tx_buffer {int dummy; } ;
struct ixgbe_ring {int count; int size; int /*<<< orphan*/ * tx_buffer_info; scalar_t__ next_to_clean; scalar_t__ next_to_use; void* desc; int /*<<< orphan*/  dma; TYPE_1__* q_vector; struct device* dev; } ;
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

int FUNC8(struct ixgbe_ring *tx_ring)
{
	struct device *dev = tx_ring->dev;
	int orig_node = FUNC2(dev);
	int ring_node = NUMA_NO_NODE;
	int size;

	size = sizeof(struct ixgbe_tx_buffer) * tx_ring->count;

	if (tx_ring->q_vector)
		ring_node = tx_ring->q_vector->numa_node;

	tx_ring->tx_buffer_info = FUNC7(size, ring_node);
	if (!tx_ring->tx_buffer_info)
		tx_ring->tx_buffer_info = FUNC6(size);
	if (!tx_ring->tx_buffer_info)
		goto err;

	/* round up to nearest 4K */
	tx_ring->size = tx_ring->count * sizeof(union ixgbe_adv_tx_desc);
	tx_ring->size = FUNC0(tx_ring->size, 4096);

	FUNC4(dev, ring_node);
	tx_ring->desc = FUNC3(dev,
					   tx_ring->size,
					   &tx_ring->dma,
					   GFP_KERNEL);
	FUNC4(dev, orig_node);
	if (!tx_ring->desc)
		tx_ring->desc = FUNC3(dev, tx_ring->size,
						   &tx_ring->dma, GFP_KERNEL);
	if (!tx_ring->desc)
		goto err;

	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;
	return 0;

err:
	FUNC5(tx_ring->tx_buffer_info);
	tx_ring->tx_buffer_info = NULL;
	FUNC1(dev, "Unable to allocate memory for the Tx descriptor ring\n");
	return -ENOMEM;
}