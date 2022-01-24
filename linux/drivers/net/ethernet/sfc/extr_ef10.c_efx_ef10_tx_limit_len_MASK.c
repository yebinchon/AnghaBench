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
struct efx_tx_queue {int dummy; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EFX_EF10_MAX_TX_DESCRIPTOR_LEN ; 
 unsigned int EFX_PAGE_SIZE ; 

__attribute__((used)) static unsigned int FUNC1(struct efx_tx_queue *tx_queue,
					  dma_addr_t dma_addr, unsigned int len)
{
	if (len > EFX_EF10_MAX_TX_DESCRIPTOR_LEN) {
		/* If we need to break across multiple descriptors we should
		 * stop at a page boundary. This assumes the length limit is
		 * greater than the page size.
		 */
		dma_addr_t end = dma_addr + EFX_EF10_MAX_TX_DESCRIPTOR_LEN;

		FUNC0(EFX_EF10_MAX_TX_DESCRIPTOR_LEN < EFX_PAGE_SIZE);
		len = (end & (~(EFX_PAGE_SIZE - 1))) - dma_addr;
	}

	return len;
}