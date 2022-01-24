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
typedef  union e1000_adv_tx_desc {int dummy; } e1000_adv_tx_desc ;
struct igb_tx_buffer {int dummy; } ;
struct igb_ring {int count; int size; int /*<<< orphan*/ * tx_buffer_info; scalar_t__ next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/  desc; int /*<<< orphan*/  dma; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

int FUNC5(struct igb_ring *tx_ring)
{
	struct device *dev = tx_ring->dev;
	int size;

	size = sizeof(struct igb_tx_buffer) * tx_ring->count;

	tx_ring->tx_buffer_info = FUNC4(size);
	if (!tx_ring->tx_buffer_info)
		goto err;

	/* round up to nearest 4K */
	tx_ring->size = tx_ring->count * sizeof(union e1000_adv_tx_desc);
	tx_ring->size = FUNC0(tx_ring->size, 4096);

	tx_ring->desc = FUNC2(dev, tx_ring->size,
					   &tx_ring->dma, GFP_KERNEL);
	if (!tx_ring->desc)
		goto err;

	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;

	return 0;

err:
	FUNC3(tx_ring->tx_buffer_info);
	tx_ring->tx_buffer_info = NULL;
	FUNC1(dev, "Unable to allocate memory for the Tx descriptor ring\n");
	return -ENOMEM;
}