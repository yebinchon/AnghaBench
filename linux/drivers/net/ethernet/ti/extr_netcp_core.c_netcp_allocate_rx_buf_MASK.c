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
typedef  unsigned int u32 ;
struct skb_shared_info {int dummy; } ;
struct page {int dummy; } ;
struct netcp_intf {unsigned int rx_queue_id; int /*<<< orphan*/  rx_pool; int /*<<< orphan*/ * rx_fdq; int /*<<< orphan*/  dev; int /*<<< orphan*/  ndev_dev; } ;
struct knav_dma_desc {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 scalar_t__ FUNC0 (struct knav_dma_desc*) ; 
 unsigned int KNAV_DMA_DESC_HAS_EPIB ; 
 unsigned int KNAV_DMA_DESC_PKT_LEN_MASK ; 
 unsigned int KNAV_DMA_DESC_PSLEN_SHIFT ; 
 unsigned int KNAV_DMA_DESC_PS_INFO_IN_DESC ; 
 unsigned int KNAV_DMA_DESC_RETQ_MASK ; 
 unsigned int KNAV_DMA_DESC_RETQ_SHIFT ; 
 unsigned int KNAV_DMA_NUM_PS_WORDS ; 
 unsigned int NETCP_PACKET_SIZE ; 
 unsigned int NETCP_SOP_OFFSET ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct knav_dma_desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct knav_dma_desc*) ; 
 unsigned int FUNC3 (int) ; 
 struct page* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct knav_dma_desc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct knav_dma_desc*,int,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct knav_dma_desc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 void* FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,unsigned int,struct knav_dma_desc*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned int,struct knav_dma_desc*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct netcp_intf *netcp, int fdq)
{
	struct knav_dma_desc *hwdesc;
	unsigned int buf_len, dma_sz;
	u32 desc_info, pkt_info;
	struct page *page;
	dma_addr_t dma;
	void *bufptr;
	u32 sw_data[2];

	/* Allocate descriptor */
	hwdesc = FUNC10(netcp->rx_pool);
	if (FUNC0(hwdesc)) {
		FUNC5(netcp->ndev_dev, "out of rx pool desc\n");
		return -ENOMEM;
	}

	if (FUNC14(fdq == 0)) {
		unsigned int primary_buf_len;
		/* Allocate a primary receive queue entry */
		buf_len = NETCP_PACKET_SIZE + NETCP_SOP_OFFSET;
		primary_buf_len = FUNC3(buf_len) +
				FUNC3(sizeof(struct skb_shared_info));

		bufptr = FUNC15(primary_buf_len);
		sw_data[1] = primary_buf_len;

		if (FUNC18(!bufptr)) {
			FUNC6(netcp->ndev_dev,
					     "Primary RX buffer alloc failed\n");
			goto fail;
		}
		dma = FUNC8(netcp->dev, bufptr, buf_len,
				     DMA_TO_DEVICE);
		if (FUNC18(FUNC9(netcp->dev, dma)))
			goto fail;

		/* warning!!!! We are saving the virtual ptr in the sw_data
		 * field as a 32bit value. Will not work on 64bit machines
		 */
		sw_data[0] = (u32)bufptr;
	} else {
		/* Allocate a secondary receive queue entry */
		page = FUNC4(GFP_ATOMIC | GFP_DMA);
		if (FUNC18(!page)) {
			FUNC6(netcp->ndev_dev, "Secondary page alloc failed\n");
			goto fail;
		}
		buf_len = PAGE_SIZE;
		dma = FUNC7(netcp->dev, page, 0, buf_len, DMA_TO_DEVICE);
		/* warning!!!! We are saving the virtual ptr in the sw_data
		 * field as a 32bit value. Will not work on 64bit machines
		 */
		sw_data[0] = (u32)page;
		sw_data[1] = 0;
	}

	desc_info =  KNAV_DMA_DESC_PS_INFO_IN_DESC;
	desc_info |= buf_len & KNAV_DMA_DESC_PKT_LEN_MASK;
	pkt_info =  KNAV_DMA_DESC_HAS_EPIB;
	pkt_info |= KNAV_DMA_NUM_PS_WORDS << KNAV_DMA_DESC_PSLEN_SHIFT;
	pkt_info |= (netcp->rx_queue_id & KNAV_DMA_DESC_RETQ_MASK) <<
		    KNAV_DMA_DESC_RETQ_SHIFT;
	FUNC17(dma, buf_len, hwdesc);
	FUNC1(sw_data[0], hwdesc);
	FUNC2(sw_data[1], hwdesc);
	FUNC16(desc_info, pkt_info, hwdesc);

	/* Push to FDQs */
	FUNC11(netcp->rx_pool, hwdesc, sizeof(*hwdesc), &dma,
			   &dma_sz);
	FUNC13(netcp->rx_fdq[fdq], dma, sizeof(*hwdesc), 0);
	return 0;

fail:
	FUNC12(netcp->rx_pool, hwdesc);
	return -ENOMEM;
}