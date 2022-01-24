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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  size_t u32 ;
struct octeon_instr_queue {scalar_t__ reset_instr_cnt; int /*<<< orphan*/ * inst_cnt_reg; int /*<<< orphan*/ * doorbell_reg; int /*<<< orphan*/  max_count; int /*<<< orphan*/  base_addr_dma; } ;
struct TYPE_4__ {scalar_t__ pf_srn; } ;
struct octeon_device {scalar_t__ msix_on; TYPE_3__* pci_dev; TYPE_2__* mmio; TYPE_1__ sriov_info; struct octeon_instr_queue** instr_queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ hw_addr; } ;

/* Variables and functions */
 int CN23XX_INTR_CINT_ENB ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (size_t) ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct octeon_device *oct, u32 iq_no)
{
	struct octeon_instr_queue *iq = oct->instr_queue[iq_no];
	u64 pkt_in_done;

	iq_no += oct->sriov_info.pf_srn;

	/* Write the start of the input queue's ring and its size  */
	FUNC6(oct, FUNC0(iq_no),
			   iq->base_addr_dma);
	FUNC5(oct, FUNC3(iq_no), iq->max_count);

	/* Remember the doorbell & instruction count register addr
	 * for this queue
	 */
	iq->doorbell_reg =
	    (u8 *)oct->mmio[0].hw_addr + FUNC1(iq_no);
	iq->inst_cnt_reg =
	    (u8 *)oct->mmio[0].hw_addr + FUNC2(iq_no);
	FUNC4(&oct->pci_dev->dev, "InstQ[%d]:dbell reg @ 0x%p instcnt_reg @ 0x%p\n",
		iq_no, iq->doorbell_reg, iq->inst_cnt_reg);

	/* Store the current instruction counter (used in flush_iq
	 * calculation)
	 */
	pkt_in_done = FUNC7(iq->inst_cnt_reg);

	if (oct->msix_on) {
		/* Set CINT_ENB to enable IQ interrupt   */
		FUNC8((pkt_in_done | CN23XX_INTR_CINT_ENB),
		       iq->inst_cnt_reg);
	} else {
		/* Clear the count by writing back what we read, but don't
		 * enable interrupts
		 */
		FUNC8(pkt_in_done, iq->inst_cnt_reg);
	}

	iq->reset_instr_cnt = 0;
}