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
typedef  union e1000_rx_desc_packet_split {int dummy; } e1000_rx_desc_packet_split ;
struct e1000_ring {int count; int size; struct e1000_buffer* buffer_info; int /*<<< orphan*/ * rx_skb_top; scalar_t__ next_to_use; scalar_t__ next_to_clean; struct e1000_adapter* adapter; } ;
struct e1000_ps_page {int dummy; } ;
struct e1000_buffer {int /*<<< orphan*/  ps_pages; } ;
struct e1000_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PS_PAGE_BUFFERS ; 
 int FUNC1 (struct e1000_adapter*,struct e1000_ring*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_buffer*) ; 
 struct e1000_buffer* FUNC6 (int) ; 

int FUNC7(struct e1000_ring *rx_ring)
{
	struct e1000_adapter *adapter = rx_ring->adapter;
	struct e1000_buffer *buffer_info;
	int i, size, desc_len, err = -ENOMEM;

	size = sizeof(struct e1000_buffer) * rx_ring->count;
	rx_ring->buffer_info = FUNC6(size);
	if (!rx_ring->buffer_info)
		goto err;

	for (i = 0; i < rx_ring->count; i++) {
		buffer_info = &rx_ring->buffer_info[i];
		buffer_info->ps_pages = FUNC3(PS_PAGE_BUFFERS,
						sizeof(struct e1000_ps_page),
						GFP_KERNEL);
		if (!buffer_info->ps_pages)
			goto err_pages;
	}

	desc_len = sizeof(union e1000_rx_desc_packet_split);

	/* Round up to nearest 4K */
	rx_ring->size = rx_ring->count * desc_len;
	rx_ring->size = FUNC0(rx_ring->size, 4096);

	err = FUNC1(adapter, rx_ring);
	if (err)
		goto err_pages;

	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;
	rx_ring->rx_skb_top = NULL;

	return 0;

err_pages:
	for (i = 0; i < rx_ring->count; i++) {
		buffer_info = &rx_ring->buffer_info[i];
		FUNC4(buffer_info->ps_pages);
	}
err:
	FUNC5(rx_ring->buffer_info);
	FUNC2("Unable to allocate memory for the receive descriptor ring\n");
	return err;
}