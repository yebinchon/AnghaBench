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
typedef  int /*<<< orphan*/  u32 ;
struct netcp_intf {int /*<<< orphan*/  rx_pool; int /*<<< orphan*/  dev; int /*<<< orphan*/  ndev_dev; } ;
struct knav_dma_desc {int /*<<< orphan*/  next_desc; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ FUNC0 (struct knav_dma_desc*) ; 
 scalar_t__ FUNC1 (struct knav_dma_desc*) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,struct knav_dma_desc*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct knav_dma_desc*) ; 
 struct knav_dma_desc* FUNC8 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int,void*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct netcp_intf *netcp,
				     struct knav_dma_desc *desc)
{
	struct knav_dma_desc *ndesc;
	dma_addr_t dma_desc, dma_buf;
	unsigned int buf_len, dma_sz = sizeof(*ndesc);
	void *buf_ptr;
	u32 tmp;

	FUNC6(&dma_desc, 1, &desc->next_desc);

	while (dma_desc) {
		ndesc = FUNC8(netcp->rx_pool, dma_desc, dma_sz);
		if (FUNC10(!ndesc)) {
			FUNC3(netcp->ndev_dev, "failed to unmap Rx desc\n");
			break;
		}
		FUNC5(&dma_buf, &tmp, &dma_desc, ndesc);
		/* warning!!!! We are retrieving the virtual ptr in the sw_data
		 * field as a 32bit value. Will not work on 64bit machines
		 */
		buf_ptr = (void *)FUNC0(ndesc);
		buf_len = (int)FUNC1(desc);
		FUNC4(netcp->dev, dma_buf, PAGE_SIZE, DMA_FROM_DEVICE);
		FUNC2(buf_ptr);
		FUNC7(netcp->rx_pool, desc);
	}
	/* warning!!!! We are retrieving the virtual ptr in the sw_data
	 * field as a 32bit value. Will not work on 64bit machines
	 */
	buf_ptr = (void *)FUNC0(desc);
	buf_len = (int)FUNC1(desc);

	if (buf_ptr)
		FUNC9(buf_len <= PAGE_SIZE, buf_ptr);
	FUNC7(netcp->rx_pool, desc);
}