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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  size_t u32 ;
struct octeon_droq {int desc_ring_dma; size_t max_count; size_t buffer_size; int /*<<< orphan*/ * pkts_credit_reg; int /*<<< orphan*/ * pkts_sent_reg; } ;
struct TYPE_3__ {scalar_t__ pf_srn; } ;
struct octeon_device {int /*<<< orphan*/  msix_on; TYPE_2__* mmio; TYPE_1__ sriov_info; scalar_t__ chip; struct octeon_droq** droq; } ;
struct octeon_cn23xx_pf {int /*<<< orphan*/  conf; } ;
struct TYPE_4__ {scalar_t__ hw_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t CN23XX_PKT_OUTPUT_CTL_CENB ; 
 size_t CN23XX_PKT_OUTPUT_CTL_TENB ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int FUNC4 (size_t) ; 
 int FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int FUNC9 (struct octeon_device*,size_t) ; 
 size_t FUNC10 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct octeon_device*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct octeon_device *oct, u32 oq_no)
{
	u32 reg_val;
	struct octeon_droq *droq = oct->droq[oq_no];
	struct octeon_cn23xx_pf *cn23xx = (struct octeon_cn23xx_pf *)oct->chip;
	u64 time_threshold;
	u64 cnt_threshold;

	oq_no += oct->sriov_info.pf_srn;

	FUNC12(oct, FUNC2(oq_no),
			   droq->desc_ring_dma);
	FUNC11(oct, FUNC8(oq_no), droq->max_count);

	FUNC11(oct, FUNC3(oq_no),
			 droq->buffer_size);

	/* Get the mapped address of the pkt_sent and pkts_credit regs */
	droq->pkts_sent_reg =
	    (u8 *)oct->mmio[0].hw_addr + FUNC5(oq_no);
	droq->pkts_credit_reg =
	    (u8 *)oct->mmio[0].hw_addr + FUNC4(oq_no);

	if (!oct->msix_on) {
		/* Enable this output queue to generate Packet Timer Interrupt
		 */
		reg_val =
		    FUNC10(oct, FUNC6(oq_no));
		reg_val |= CN23XX_PKT_OUTPUT_CTL_TENB;
		FUNC11(oct, FUNC6(oq_no),
				 reg_val);

		/* Enable this output queue to generate Packet Count Interrupt
		 */
		reg_val =
		    FUNC10(oct, FUNC6(oq_no));
		reg_val |= CN23XX_PKT_OUTPUT_CTL_CENB;
		FUNC11(oct, FUNC6(oq_no),
				 reg_val);
	} else {
		time_threshold = FUNC9(
		    oct, (u32)FUNC1(cn23xx->conf));
		cnt_threshold = (u32)FUNC0(cn23xx->conf);

		FUNC12(
		    oct, FUNC7(oq_no),
		    ((time_threshold << 32 | cnt_threshold)));
	}
}