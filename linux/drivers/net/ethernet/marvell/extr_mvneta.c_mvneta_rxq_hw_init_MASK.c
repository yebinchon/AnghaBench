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
struct mvneta_rx_queue {int /*<<< orphan*/  size; int /*<<< orphan*/  time_coal; int /*<<< orphan*/  pkts_coal; int /*<<< orphan*/  id; int /*<<< orphan*/  descs_phys; } ;
struct mvneta_port {scalar_t__ rx_offset_correction; int /*<<< orphan*/  pkt_size; int /*<<< orphan*/  bm_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NET_SKB_PAD ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ SZ_64K ; 
 int /*<<< orphan*/  FUNC3 (struct mvneta_port*,struct mvneta_rx_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvneta_port*,struct mvneta_rx_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvneta_port*,struct mvneta_rx_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct mvneta_port*,struct mvneta_rx_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct mvneta_port*,struct mvneta_rx_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mvneta_port*,struct mvneta_rx_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvneta_port*,struct mvneta_rx_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct mvneta_port*,struct mvneta_rx_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvneta_port*,struct mvneta_rx_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct mvneta_port*,struct mvneta_rx_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct mvneta_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct mvneta_port *pp,
			       struct mvneta_rx_queue *rxq)
{
	/* Set Rx descriptors queue starting address */
	FUNC13(pp, FUNC0(rxq->id), rxq->descs_phys);
	FUNC13(pp, FUNC1(rxq->id), rxq->size);

	/* Set coalescing pkts and time */
	FUNC3(pp, rxq, rxq->pkts_coal);
	FUNC4(pp, rxq, rxq->time_coal);

	if (!pp->bm_priv) {
		/* Set Offset */
		FUNC11(pp, rxq, 0);
		FUNC7(pp, rxq, PAGE_SIZE < SZ_64K ?
					PAGE_SIZE :
					FUNC2(pp->pkt_size));
		FUNC5(pp, rxq);
		FUNC8(pp, rxq, rxq->size);
	} else {
		/* Set Offset */
		FUNC11(pp, rxq,
				      NET_SKB_PAD - pp->rx_offset_correction);

		FUNC6(pp, rxq);
		/* Fill RXQ with buffers from RX pool */
		FUNC9(pp, rxq);
		FUNC12(pp, rxq);
		FUNC10(pp, rxq, rxq->size);
	}
}