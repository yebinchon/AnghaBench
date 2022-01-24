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
typedef  size_t u32 ;
struct octeon_instr_queue {scalar_t__ inst_cnt_reg; int /*<<< orphan*/  reset_instr_cnt; scalar_t__ doorbell_reg; int /*<<< orphan*/  max_count; int /*<<< orphan*/  base_addr_dma; } ;
struct octeon_device {TYPE_2__* pci_dev; TYPE_1__* mmio; struct octeon_instr_queue** instr_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

void FUNC9(struct octeon_device *oct, u32 iq_no)
{
	struct octeon_instr_queue *iq = oct->instr_queue[iq_no];

	FUNC7(oct, FUNC3(iq_no), 0);

	/* Write the start of the input queue's ring and its size  */
	FUNC7(oct, FUNC0(iq_no),
			   iq->base_addr_dma);
	FUNC6(oct, FUNC4(iq_no), iq->max_count);

	/* Remember the doorbell & instruction count register addr for this
	 * queue
	 */
	iq->doorbell_reg = oct->mmio[0].hw_addr + FUNC1(iq_no);
	iq->inst_cnt_reg = oct->mmio[0].hw_addr
			   + FUNC2(iq_no);
	FUNC5(&oct->pci_dev->dev, "InstQ[%d]:dbell reg @ 0x%p instcnt_reg @ 0x%p\n",
		iq_no, iq->doorbell_reg, iq->inst_cnt_reg);

	/* Store the current instruction counter
	 * (used in flush_iq calculation)
	 */
	iq->reset_instr_cnt = FUNC8(iq->inst_cnt_reg);
}