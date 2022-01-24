#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct octeon_droq {size_t max_count; size_t buffer_size; scalar_t__ pkts_credit_reg; scalar_t__ pkts_sent_reg; int /*<<< orphan*/  desc_ring_dma; } ;
struct octeon_device {TYPE_1__* mmio; struct octeon_droq** droq; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_CNT_INT_ENB ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_TIME_INT_ENB ; 
 size_t FUNC5 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct octeon_device *oct, u32 oq_no)
{
	u32 intr;
	struct octeon_droq *droq = oct->droq[oq_no];

	FUNC7(oct, FUNC0(oq_no),
			   droq->desc_ring_dma);
	FUNC6(oct, FUNC4(oq_no), droq->max_count);

	FUNC6(oct, FUNC1(oq_no),
			 droq->buffer_size);

	/* Get the mapped address of the pkt_sent and pkts_credit regs */
	droq->pkts_sent_reg =
		oct->mmio[0].hw_addr + FUNC3(oq_no);
	droq->pkts_credit_reg =
		oct->mmio[0].hw_addr + FUNC2(oq_no);

	/* Enable this output queue to generate Packet Timer Interrupt */
	intr = FUNC5(oct, CN6XXX_SLI_PKT_TIME_INT_ENB);
	intr |= (1 << oq_no);
	FUNC6(oct, CN6XXX_SLI_PKT_TIME_INT_ENB, intr);

	/* Enable this output queue to generate Packet Timer Interrupt */
	intr = FUNC5(oct, CN6XXX_SLI_PKT_CNT_INT_ENB);
	intr |= (1 << oq_no);
	FUNC6(oct, CN6XXX_SLI_PKT_CNT_INT_ENB, intr);
}