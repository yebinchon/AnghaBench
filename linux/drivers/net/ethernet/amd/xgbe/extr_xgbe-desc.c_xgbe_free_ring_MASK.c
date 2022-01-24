#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xgbe_ring_desc {int dummy; } ;
struct xgbe_ring_data {int dummy; } ;
struct TYPE_4__ {scalar_t__ pages_dma; scalar_t__ pages_offset; scalar_t__ pages_len; int /*<<< orphan*/ * pages; } ;
struct TYPE_3__ {scalar_t__ pages_dma; scalar_t__ pages_offset; scalar_t__ pages_len; int /*<<< orphan*/ * pages; } ;
struct xgbe_ring {unsigned int rdesc_count; int /*<<< orphan*/ * rdesc; int /*<<< orphan*/  rdesc_dma; TYPE_2__ rx_buf_pa; TYPE_1__ rx_hdr_pa; int /*<<< orphan*/ * rdata; } ;
struct xgbe_prv_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 struct xgbe_ring_data* FUNC0 (struct xgbe_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*,struct xgbe_ring_data*) ; 

__attribute__((used)) static void FUNC6(struct xgbe_prv_data *pdata,
			   struct xgbe_ring *ring)
{
	struct xgbe_ring_data *rdata;
	unsigned int i;

	if (!ring)
		return;

	if (ring->rdata) {
		for (i = 0; i < ring->rdesc_count; i++) {
			rdata = FUNC0(ring, i);
			FUNC5(pdata, rdata);
		}

		FUNC3(ring->rdata);
		ring->rdata = NULL;
	}

	if (ring->rx_hdr_pa.pages) {
		FUNC2(pdata->dev, ring->rx_hdr_pa.pages_dma,
			       ring->rx_hdr_pa.pages_len, DMA_FROM_DEVICE);
		FUNC4(ring->rx_hdr_pa.pages);

		ring->rx_hdr_pa.pages = NULL;
		ring->rx_hdr_pa.pages_len = 0;
		ring->rx_hdr_pa.pages_offset = 0;
		ring->rx_hdr_pa.pages_dma = 0;
	}

	if (ring->rx_buf_pa.pages) {
		FUNC2(pdata->dev, ring->rx_buf_pa.pages_dma,
			       ring->rx_buf_pa.pages_len, DMA_FROM_DEVICE);
		FUNC4(ring->rx_buf_pa.pages);

		ring->rx_buf_pa.pages = NULL;
		ring->rx_buf_pa.pages_len = 0;
		ring->rx_buf_pa.pages_offset = 0;
		ring->rx_buf_pa.pages_dma = 0;
	}

	if (ring->rdesc) {
		FUNC1(pdata->dev,
				  (sizeof(struct xgbe_ring_desc) *
				   ring->rdesc_count),
				  ring->rdesc, ring->rdesc_dma);
		ring->rdesc = NULL;
	}
}