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
struct ice_tx_desc {int dummy; } ;
struct TYPE_2__ {int prev_pkt; } ;
struct ice_ring {int count; int /*<<< orphan*/ * tx_buf; TYPE_1__ tx_stats; scalar_t__ next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/  size; int /*<<< orphan*/  desc; int /*<<< orphan*/  dma; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct ice_ring *tx_ring)
{
	struct device *dev = tx_ring->dev;

	if (!dev)
		return -ENOMEM;

	/* warn if we are about to overwrite the pointer */
	FUNC1(tx_ring->tx_buf);
	tx_ring->tx_buf =
		FUNC4(dev, sizeof(*tx_ring->tx_buf) * tx_ring->count,
			     GFP_KERNEL);
	if (!tx_ring->tx_buf)
		return -ENOMEM;

	/* round up to nearest page */
	tx_ring->size = FUNC0(tx_ring->count * sizeof(struct ice_tx_desc),
			      PAGE_SIZE);
	tx_ring->desc = FUNC5(dev, tx_ring->size, &tx_ring->dma,
					    GFP_KERNEL);
	if (!tx_ring->desc) {
		FUNC2(dev, "Unable to allocate memory for the Tx descriptor ring, size=%d\n",
			tx_ring->size);
		goto err;
	}

	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;
	tx_ring->tx_stats.prev_pkt = -1;
	return 0;

err:
	FUNC3(dev, tx_ring->tx_buf);
	tx_ring->tx_buf = NULL;
	return -ENOMEM;
}