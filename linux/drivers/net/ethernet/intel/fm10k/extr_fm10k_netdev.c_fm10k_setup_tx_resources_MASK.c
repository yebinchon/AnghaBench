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
struct fm10k_tx_desc {int dummy; } ;
struct fm10k_tx_buffer {int dummy; } ;
struct fm10k_ring {int count; int size; int /*<<< orphan*/ * tx_buffer; int /*<<< orphan*/  desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  syncp; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

int FUNC5(struct fm10k_ring *tx_ring)
{
	struct device *dev = tx_ring->dev;
	int size;

	size = sizeof(struct fm10k_tx_buffer) * tx_ring->count;

	tx_ring->tx_buffer = FUNC4(size);
	if (!tx_ring->tx_buffer)
		goto err;

	FUNC2(&tx_ring->syncp);

	/* round up to nearest 4K */
	tx_ring->size = tx_ring->count * sizeof(struct fm10k_tx_desc);
	tx_ring->size = FUNC0(tx_ring->size, 4096);

	tx_ring->desc = FUNC1(dev, tx_ring->size,
					   &tx_ring->dma, GFP_KERNEL);
	if (!tx_ring->desc)
		goto err;

	return 0;

err:
	FUNC3(tx_ring->tx_buffer);
	tx_ring->tx_buffer = NULL;
	return -ENOMEM;
}