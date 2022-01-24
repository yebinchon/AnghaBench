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
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
struct ixgbevf_tx_buffer {int dummy; } ;
struct ixgbevf_ring {int count; int size; int /*<<< orphan*/ * tx_buffer_info; int /*<<< orphan*/  desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  dev; int /*<<< orphan*/  syncp; int /*<<< orphan*/  netdev; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ixgbevf_adapter* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 

int FUNC7(struct ixgbevf_ring *tx_ring)
{
	struct ixgbevf_adapter *adapter = FUNC3(tx_ring->netdev);
	int size;

	size = sizeof(struct ixgbevf_tx_buffer) * tx_ring->count;
	tx_ring->tx_buffer_info = FUNC6(size);
	if (!tx_ring->tx_buffer_info)
		goto err;

	FUNC4(&tx_ring->syncp);

	/* round up to nearest 4K */
	tx_ring->size = tx_ring->count * sizeof(union ixgbe_adv_tx_desc);
	tx_ring->size = FUNC0(tx_ring->size, 4096);

	tx_ring->desc = FUNC1(tx_ring->dev, tx_ring->size,
					   &tx_ring->dma, GFP_KERNEL);
	if (!tx_ring->desc)
		goto err;

	return 0;

err:
	FUNC5(tx_ring->tx_buffer_info);
	tx_ring->tx_buffer_info = NULL;
	FUNC2(&adapter->hw, "Unable to allocate memory for the transmit descriptor ring\n");
	return -ENOMEM;
}