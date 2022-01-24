#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct page {int dummy; } ;
struct device {int dummy; } ;
struct be_rx_page_info {int page_offset; int last_frag; struct page* page; } ;
struct be_queue_info {size_t head; int /*<<< orphan*/  used; int /*<<< orphan*/  id; } ;
struct be_rx_obj {int rx_post_starved; struct be_rx_page_info* page_info_tbl; struct be_queue_info q; struct be_adapter* adapter; } ;
struct be_eth_rx_d {void* fragpa_hi; void* fragpa_lo; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_map_errors; } ;
struct be_adapter {scalar_t__ big_page_size; TYPE_2__ drv_stats; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  rx_post_fail; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  MAX_NUM_POST_ERX_DB ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct page* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  bus ; 
 void* FUNC4 (int) ; 
 int FUNC5 (struct device*,struct page*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct be_rx_page_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct be_queue_info*) ; 
 struct be_eth_rx_d* FUNC12 (struct be_queue_info*) ; 
 scalar_t__ rx_frag_size ; 
 TYPE_3__* FUNC13 (struct be_rx_obj*) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct be_rx_obj *rxo, gfp_t gfp, u32 frags_needed)
{
	struct be_adapter *adapter = rxo->adapter;
	struct be_rx_page_info *page_info = NULL, *prev_page_info = NULL;
	struct be_queue_info *rxq = &rxo->q;
	struct page *pagep = NULL;
	struct device *dev = &adapter->pdev->dev;
	struct be_eth_rx_d *rxd;
	u64 page_dmaaddr = 0, frag_dmaaddr;
	u32 posted, page_offset = 0, notify = 0;

	page_info = &rxo->page_info_tbl[rxq->head];
	for (posted = 0; posted < frags_needed && !page_info->page; posted++) {
		if (!pagep) {
			pagep = FUNC2(adapter->big_page_size, gfp);
			if (FUNC14(!pagep)) {
				FUNC13(rxo)->rx_post_fail++;
				break;
			}
			page_dmaaddr = FUNC5(dev, pagep, 0,
						    adapter->big_page_size,
						    DMA_FROM_DEVICE);
			if (FUNC6(dev, page_dmaaddr)) {
				FUNC10(pagep);
				pagep = NULL;
				adapter->drv_stats.dma_map_errors++;
				break;
			}
			page_offset = 0;
		} else {
			FUNC8(pagep);
			page_offset += rx_frag_size;
		}
		page_info->page_offset = page_offset;
		page_info->page = pagep;

		rxd = FUNC12(rxq);
		frag_dmaaddr = page_dmaaddr + page_info->page_offset;
		rxd->fragpa_lo = FUNC4(frag_dmaaddr & 0xFFFFFFFF);
		rxd->fragpa_hi = FUNC4(FUNC15(frag_dmaaddr));

		/* Any space left in the current big page for another frag? */
		if ((page_offset + rx_frag_size + rx_frag_size) >
					adapter->big_page_size) {
			pagep = NULL;
			page_info->last_frag = true;
			FUNC7(page_info, bus, page_dmaaddr);
		} else {
			FUNC7(page_info, bus, frag_dmaaddr);
		}

		prev_page_info = page_info;
		FUNC11(rxq);
		page_info = &rxo->page_info_tbl[rxq->head];
	}

	/* Mark the last frag of a page when we break out of the above loop
	 * with no more slots available in the RXQ
	 */
	if (pagep) {
		prev_page_info->last_frag = true;
		FUNC7(prev_page_info, bus, page_dmaaddr);
	}

	if (posted) {
		FUNC0(posted, &rxq->used);
		if (rxo->rx_post_starved)
			rxo->rx_post_starved = false;
		do {
			notify = FUNC9(MAX_NUM_POST_ERX_DB, posted);
			FUNC3(adapter, rxq->id, notify);
			posted -= notify;
		} while (posted);
	} else if (FUNC1(&rxq->used) == 0) {
		/* Let be_worker replenish when memory is available */
		rxo->rx_post_starved = true;
	}
}