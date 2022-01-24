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
typedef  union igc_adv_rx_desc {int dummy; } igc_adv_rx_desc ;
struct igc_rx_buffer {int dummy; } ;
struct igc_ring {int count; int size; int /*<<< orphan*/ * rx_buffer_info; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ next_to_alloc; int /*<<< orphan*/  desc; int /*<<< orphan*/  dma; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

int FUNC5(struct igc_ring *rx_ring)
{
	struct device *dev = rx_ring->dev;
	int size, desc_len;

	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
	rx_ring->rx_buffer_info = FUNC4(size);
	if (!rx_ring->rx_buffer_info)
		goto err;

	desc_len = sizeof(union igc_adv_rx_desc);

	/* Round up to nearest 4K */
	rx_ring->size = rx_ring->count * desc_len;
	rx_ring->size = FUNC0(rx_ring->size, 4096);

	rx_ring->desc = FUNC2(dev, rx_ring->size,
					   &rx_ring->dma, GFP_KERNEL);

	if (!rx_ring->desc)
		goto err;

	rx_ring->next_to_alloc = 0;
	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;

	return 0;

err:
	FUNC3(rx_ring->rx_buffer_info);
	rx_ring->rx_buffer_info = NULL;
	FUNC1(dev,
		"Unable to allocate memory for the receive descriptor ring\n");
	return -ENOMEM;
}