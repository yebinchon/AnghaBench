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
typedef  int /*<<< orphan*/  u32 ;
struct i40e_tx_desc {int dummy; } ;
struct i40e_tx_buffer {int dummy; } ;
struct TYPE_2__ {int prev_pkt_ctr; } ;
struct i40e_ring {int count; int size; int /*<<< orphan*/ * tx_bi; TYPE_1__ tx_stats; scalar_t__ next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/  desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  syncp; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct i40e_ring *tx_ring)
{
	struct device *dev = tx_ring->dev;
	int bi_size;

	if (!dev)
		return -ENOMEM;

	/* warn if we are about to overwrite the pointer */
	FUNC1(tx_ring->tx_bi);
	bi_size = sizeof(struct i40e_tx_buffer) * tx_ring->count;
	tx_ring->tx_bi = FUNC5(bi_size, GFP_KERNEL);
	if (!tx_ring->tx_bi)
		goto err;

	FUNC6(&tx_ring->syncp);

	/* round up to nearest 4K */
	tx_ring->size = tx_ring->count * sizeof(struct i40e_tx_desc);
	/* add u32 for head writeback, align after this takes care of
	 * guaranteeing this is at least one cache line in size
	 */
	tx_ring->size += sizeof(u32);
	tx_ring->size = FUNC0(tx_ring->size, 4096);
	tx_ring->desc = FUNC3(dev, tx_ring->size,
					   &tx_ring->dma, GFP_KERNEL);
	if (!tx_ring->desc) {
		FUNC2(dev, "Unable to allocate memory for the Tx descriptor ring, size=%d\n",
			 tx_ring->size);
		goto err;
	}

	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;
	tx_ring->tx_stats.prev_pkt_ctr = -1;
	return 0;

err:
	FUNC4(tx_ring->tx_bi);
	tx_ring->tx_bi = NULL;
	return -ENOMEM;
}