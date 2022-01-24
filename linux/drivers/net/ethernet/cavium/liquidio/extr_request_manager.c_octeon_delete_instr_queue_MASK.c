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
typedef  size_t u32 ;
struct octeon_instr_queue {int max_count; int /*<<< orphan*/  base_addr_dma; scalar_t__ base_addr; struct octeon_instr_queue* request_list; } ;
struct TYPE_6__ {unsigned long long iq; } ;
struct octeon_device {int /*<<< orphan*/  num_iqs; struct octeon_instr_queue** instr_queue; TYPE_3__ io_qmask; TYPE_2__* check_db_wq; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct TYPE_5__ {int /*<<< orphan*/  wq; TYPE_1__ wk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct octeon_device*) ; 
 scalar_t__ FUNC3 (struct octeon_device*) ; 
 scalar_t__ FUNC4 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cn23xx_pf ; 
 int /*<<< orphan*/  cn23xx_vf ; 
 int /*<<< orphan*/  cn6xxx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_instr_queue*) ; 

int FUNC9(struct octeon_device *oct, u32 iq_no)
{
	u64 desc_size = 0, q_size;
	struct octeon_instr_queue *iq = oct->instr_queue[iq_no];

	FUNC5(&oct->check_db_wq[iq_no].wk.work);
	FUNC6(oct->check_db_wq[iq_no].wq);

	if (FUNC4(oct))
		desc_size =
		    FUNC0(FUNC1(oct, cn6xxx));
	else if (FUNC2(oct))
		desc_size =
		    FUNC0(FUNC1(oct, cn23xx_pf));
	else if (FUNC3(oct))
		desc_size =
		    FUNC0(FUNC1(oct, cn23xx_vf));

	FUNC8(iq->request_list);

	if (iq->base_addr) {
		q_size = iq->max_count * desc_size;
		FUNC7(oct, (u32)q_size, iq->base_addr,
			     iq->base_addr_dma);
		oct->io_qmask.iq &= ~(1ULL << iq_no);
		FUNC8(oct->instr_queue[iq_no]);
		oct->instr_queue[iq_no] = NULL;
		oct->num_iqs--;
		return 0;
	}
	return 1;
}