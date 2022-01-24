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
struct netcp_intf {int /*<<< orphan*/  rx_pool; int /*<<< orphan*/  dev; int /*<<< orphan*/  ndev_dev; int /*<<< orphan*/ * rx_fdq; } ;
struct knav_dma_desc {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ FUNC0 (struct knav_dma_desc*) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int*,struct knav_dma_desc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct knav_dma_desc*) ; 
 struct knav_dma_desc* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int,void*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct netcp_intf *netcp, int fdq)
{
	struct knav_dma_desc *desc;
	unsigned int buf_len, dma_sz;
	dma_addr_t dma;
	void *buf_ptr;

	/* Allocate descriptor */
	while ((dma = FUNC8(netcp->rx_fdq[fdq], &dma_sz))) {
		desc = FUNC7(netcp->rx_pool, dma, dma_sz);
		if (FUNC10(!desc)) {
			FUNC2(netcp->ndev_dev, "failed to unmap Rx desc\n");
			continue;
		}

		FUNC5(&dma, &buf_len, desc);
		/* warning!!!! We are retrieving the virtual ptr in the sw_data
		 * field as a 32bit value. Will not work on 64bit machines
		 */
		buf_ptr = (void *)FUNC0(desc);

		if (FUNC10(!dma)) {
			FUNC2(netcp->ndev_dev, "NULL orig_buff in desc\n");
			FUNC6(netcp->rx_pool, desc);
			continue;
		}

		if (FUNC10(!buf_ptr)) {
			FUNC2(netcp->ndev_dev, "NULL bufptr in desc\n");
			FUNC6(netcp->rx_pool, desc);
			continue;
		}

		if (fdq == 0) {
			FUNC4(netcp->dev, dma, buf_len,
					 DMA_FROM_DEVICE);
			FUNC9((buf_len <= PAGE_SIZE), buf_ptr);
		} else {
			FUNC3(netcp->dev, dma, buf_len,
				       DMA_FROM_DEVICE);
			FUNC1(buf_ptr);
		}

		FUNC6(netcp->rx_pool, desc);
	}
}