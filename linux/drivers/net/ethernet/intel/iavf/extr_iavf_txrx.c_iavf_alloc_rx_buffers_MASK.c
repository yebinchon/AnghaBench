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
struct TYPE_5__ {scalar_t__ status_error_len; } ;
struct TYPE_6__ {TYPE_2__ qword1; } ;
struct TYPE_4__ {int /*<<< orphan*/  pkt_addr; } ;
union iavf_rx_desc {TYPE_3__ wb; TYPE_1__ read; } ;
typedef  size_t u16 ;
struct iavf_rx_buffer {scalar_t__ page_offset; scalar_t__ dma; } ;
struct iavf_ring {size_t next_to_use; size_t count; struct iavf_rx_buffer* rx_bi; int /*<<< orphan*/  rx_buf_len; int /*<<< orphan*/  dev; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 union iavf_rx_desc* FUNC0 (struct iavf_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_ring*,struct iavf_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct iavf_ring*,size_t) ; 
 scalar_t__ FUNC5 (int) ; 

bool FUNC6(struct iavf_ring *rx_ring, u16 cleaned_count)
{
	u16 ntu = rx_ring->next_to_use;
	union iavf_rx_desc *rx_desc;
	struct iavf_rx_buffer *bi;

	/* do nothing if no valid netdev defined */
	if (!rx_ring->netdev || !cleaned_count)
		return false;

	rx_desc = FUNC0(rx_ring, ntu);
	bi = &rx_ring->rx_bi[ntu];

	do {
		if (!FUNC3(rx_ring, bi))
			goto no_buffers;

		/* sync the buffer for use by the device */
		FUNC2(rx_ring->dev, bi->dma,
						 bi->page_offset,
						 rx_ring->rx_buf_len,
						 DMA_FROM_DEVICE);

		/* Refresh the desc even if buffer_addrs didn't change
		 * because each write-back erases this info.
		 */
		rx_desc->read.pkt_addr = FUNC1(bi->dma + bi->page_offset);

		rx_desc++;
		bi++;
		ntu++;
		if (FUNC5(ntu == rx_ring->count)) {
			rx_desc = FUNC0(rx_ring, 0);
			bi = rx_ring->rx_bi;
			ntu = 0;
		}

		/* clear the status bits for the next_to_use descriptor */
		rx_desc->wb.qword1.status_error_len = 0;

		cleaned_count--;
	} while (cleaned_count);

	if (rx_ring->next_to_use != ntu)
		FUNC4(rx_ring, ntu);

	return false;

no_buffers:
	if (rx_ring->next_to_use != ntu)
		FUNC4(rx_ring, ntu);

	/* make sure to come back via polling to try again after
	 * allocation failure
	 */
	return true;
}