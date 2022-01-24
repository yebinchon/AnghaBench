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
struct page {int dummy; } ;
struct ena_com_buf {int /*<<< orphan*/  paddr; } ;
struct ena_rx_buffer {struct page* page; struct ena_com_buf ena_buf; } ;
struct ena_ring {int /*<<< orphan*/  dev; int /*<<< orphan*/  netdev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ENA_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rx_err ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ena_ring *rx_ring,
			     struct ena_rx_buffer *rx_info)
{
	struct page *page = rx_info->page;
	struct ena_com_buf *ena_buf = &rx_info->ena_buf;

	if (FUNC3(!page)) {
		FUNC2(rx_ring->adapter, rx_err, rx_ring->netdev,
			   "Trying to free unallocated buffer\n");
		return;
	}

	FUNC1(rx_ring->dev, ena_buf->paddr, ENA_PAGE_SIZE,
		       DMA_FROM_DEVICE);

	FUNC0(page);
	rx_info->page = NULL;
}