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
struct TYPE_4__ {scalar_t__ status_error0; } ;
struct TYPE_3__ {int /*<<< orphan*/  pkt_addr; } ;
union ice_32b_rx_flex_desc {TYPE_2__ wb; TYPE_1__ read; } ;
typedef  size_t u16 ;
struct ice_rx_buf {scalar_t__ page_offset; scalar_t__ dma; } ;
struct ice_ring {size_t next_to_use; size_t count; struct ice_rx_buf* rx_buf; int /*<<< orphan*/  dev; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ICE_RXBUF_2048 ; 
 union ice_32b_rx_flex_desc* FUNC0 (struct ice_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_ring*,struct ice_rx_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_ring*,size_t) ; 
 scalar_t__ FUNC5 (int) ; 

bool FUNC6(struct ice_ring *rx_ring, u16 cleaned_count)
{
	union ice_32b_rx_flex_desc *rx_desc;
	u16 ntu = rx_ring->next_to_use;
	struct ice_rx_buf *bi;

	/* do nothing if no valid netdev defined */
	if (!rx_ring->netdev || !cleaned_count)
		return false;

	/* get the Rx descriptor and buffer based on next_to_use */
	rx_desc = FUNC0(rx_ring, ntu);
	bi = &rx_ring->rx_buf[ntu];

	do {
		/* if we fail here, we have work remaining */
		if (!FUNC3(rx_ring, bi))
			break;

		/* sync the buffer for use by the device */
		FUNC2(rx_ring->dev, bi->dma,
						 bi->page_offset,
						 ICE_RXBUF_2048,
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
			bi = rx_ring->rx_buf;
			ntu = 0;
		}

		/* clear the status bits for the next_to_use descriptor */
		rx_desc->wb.status_error0 = 0;

		cleaned_count--;
	} while (cleaned_count);

	if (rx_ring->next_to_use != ntu)
		FUNC4(rx_ring, ntu);

	return !!cleaned_count;
}