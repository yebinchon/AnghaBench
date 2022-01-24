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
struct netcp_intf {int /*<<< orphan*/  ndev_dev; int /*<<< orphan*/  tx_pool; int /*<<< orphan*/  dev; } ;
struct knav_dma_desc {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,unsigned int*,scalar_t__*,struct knav_dma_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct knav_dma_desc*) ; 
 struct knav_dma_desc* FUNC5 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct netcp_intf *netcp,
				     struct knav_dma_desc *desc,
				     unsigned int desc_sz)
{
	struct knav_dma_desc *ndesc = desc;
	dma_addr_t dma_desc, dma_buf;
	unsigned int buf_len;

	while (ndesc) {
		FUNC3(&dma_buf, &buf_len, &dma_desc, ndesc);

		if (dma_buf && buf_len)
			FUNC2(netcp->dev, dma_buf, buf_len,
					 DMA_TO_DEVICE);
		else
			FUNC1(netcp->ndev_dev, "bad Tx desc buf(%pad), len(%d)\n",
				 &dma_buf, buf_len);

		FUNC4(netcp->tx_pool, ndesc);
		ndesc = NULL;
		if (dma_desc) {
			ndesc = FUNC5(netcp->tx_pool, dma_desc,
						     desc_sz);
			if (!ndesc)
				FUNC0(netcp->ndev_dev, "failed to unmap Tx desc\n");
		}
	}
}