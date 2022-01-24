#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int count; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_8__ {int count; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_10__ {TYPE_4__ rrd; TYPE_3__ rfd; } ;
struct TYPE_6__ {int count; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_7__ {TYPE_1__ tpd; } ;
struct emac_adapter {int rxbuf_size; scalar_t__ base; TYPE_5__ rx_q; TYPE_2__ tx_q; } ;

/* Variables and functions */
 scalar_t__ EMAC_DESC_CTRL_0 ; 
 scalar_t__ EMAC_DESC_CTRL_1 ; 
 scalar_t__ EMAC_DESC_CTRL_11 ; 
 scalar_t__ EMAC_DESC_CTRL_2 ; 
 scalar_t__ EMAC_DESC_CTRL_3 ; 
 scalar_t__ EMAC_DESC_CTRL_4 ; 
 scalar_t__ EMAC_DESC_CTRL_5 ; 
 scalar_t__ EMAC_DESC_CTRL_6 ; 
 scalar_t__ EMAC_DESC_CTRL_8 ; 
 scalar_t__ EMAC_DESC_CTRL_9 ; 
 scalar_t__ EMAC_INTER_SRAM_PART9 ; 
 int RFD_RING_SIZE_BMSK ; 
 int RRD_RING_SIZE_BMSK ; 
 int RX_BUFFER_SIZE_BMSK ; 
 int TPD_RING_SIZE_BMSK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct emac_adapter *adpt)
{
	/* TPD (Transmit Packet Descriptor) */
	FUNC2(FUNC1(adpt->tx_q.tpd.dma_addr),
	       adpt->base + EMAC_DESC_CTRL_1);

	FUNC2(FUNC0(adpt->tx_q.tpd.dma_addr),
	       adpt->base + EMAC_DESC_CTRL_8);

	FUNC2(adpt->tx_q.tpd.count & TPD_RING_SIZE_BMSK,
	       adpt->base + EMAC_DESC_CTRL_9);

	/* RFD (Receive Free Descriptor) & RRD (Receive Return Descriptor) */
	FUNC2(FUNC1(adpt->rx_q.rfd.dma_addr),
	       adpt->base + EMAC_DESC_CTRL_0);

	FUNC2(FUNC0(adpt->rx_q.rfd.dma_addr),
	       adpt->base + EMAC_DESC_CTRL_2);
	FUNC2(FUNC0(adpt->rx_q.rrd.dma_addr),
	       adpt->base + EMAC_DESC_CTRL_5);

	FUNC2(adpt->rx_q.rfd.count & RFD_RING_SIZE_BMSK,
	       adpt->base + EMAC_DESC_CTRL_3);
	FUNC2(adpt->rx_q.rrd.count & RRD_RING_SIZE_BMSK,
	       adpt->base + EMAC_DESC_CTRL_6);

	FUNC2(adpt->rxbuf_size & RX_BUFFER_SIZE_BMSK,
	       adpt->base + EMAC_DESC_CTRL_4);

	FUNC2(0, adpt->base + EMAC_DESC_CTRL_11);

	/* Load all of the base addresses above and ensure that triggering HW to
	 * read ring pointers is flushed
	 */
	FUNC2(1, adpt->base + EMAC_INTER_SRAM_PART9);
}