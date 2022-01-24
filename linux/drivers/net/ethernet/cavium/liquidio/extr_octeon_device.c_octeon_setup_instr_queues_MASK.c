#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ qpg; scalar_t__ use_qpg; int /*<<< orphan*/  pkind; int /*<<< orphan*/  q_no; } ;
union oct_txpciq {TYPE_3__ s; scalar_t__ u64; } ;
typedef  int /*<<< orphan*/  u32 ;
struct octeon_instr_queue {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  pkind; } ;
struct octeon_device {scalar_t__ num_iqs; TYPE_4__** instr_queue; TYPE_2__ pfvf_hsword; TYPE_1__* pci_dev; } ;
struct TYPE_11__ {scalar_t__ ifidx; void* app_ctx; scalar_t__ q_index; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct octeon_device*) ; 
 scalar_t__ FUNC3 (struct octeon_device*) ; 
 scalar_t__ FUNC4 (struct octeon_device*) ; 
 int /*<<< orphan*/  cn23xx_pf ; 
 int /*<<< orphan*/  cn23xx_vf ; 
 int /*<<< orphan*/  cn6xxx ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct octeon_device*,union oct_txpciq,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (int) ; 
 TYPE_4__* FUNC10 (int,int) ; 

int FUNC11(struct octeon_device *oct)
{
	u32 num_descs = 0;
	u32 iq_no = 0;
	union oct_txpciq txpciq;
	int numa_node = FUNC5(&oct->pci_dev->dev);

	if (FUNC4(oct))
		num_descs =
			FUNC0(FUNC1(oct, cn6xxx));
	else if (FUNC2(oct))
		num_descs = FUNC0(FUNC1(oct, cn23xx_pf));
	else if (FUNC3(oct))
		num_descs = FUNC0(FUNC1(oct, cn23xx_vf));

	oct->num_iqs = 0;

	oct->instr_queue[0] = FUNC10(sizeof(*oct->instr_queue[0]),
				numa_node);
	if (!oct->instr_queue[0])
		oct->instr_queue[0] =
			FUNC9(sizeof(struct octeon_instr_queue));
	if (!oct->instr_queue[0])
		return 1;
	FUNC6(oct->instr_queue[0], 0, sizeof(struct octeon_instr_queue));
	oct->instr_queue[0]->q_index = 0;
	oct->instr_queue[0]->app_ctx = (void *)(size_t)0;
	oct->instr_queue[0]->ifidx = 0;
	txpciq.u64 = 0;
	txpciq.s.q_no = iq_no;
	txpciq.s.pkind = oct->pfvf_hsword.pkind;
	txpciq.s.use_qpg = 0;
	txpciq.s.qpg = 0;
	if (FUNC7(oct, txpciq, num_descs)) {
		/* prevent memory leak */
		FUNC8(oct->instr_queue[0]);
		oct->instr_queue[0] = NULL;
		return 1;
	}

	oct->num_iqs++;
	return 0;
}