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
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_hw_sched {int /*<<< orphan*/ * ipg; int /*<<< orphan*/ * kbps; int /*<<< orphan*/  pace_tab; int /*<<< orphan*/  mode; int /*<<< orphan*/  map; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int /*<<< orphan*/  cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int CUDBG_STATUS_CCLK_NOT_DEFINED ; 
 int NTX_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TP_MOD_CONFIG_A ; 
 int /*<<< orphan*/  TP_TX_MOD_QUEUE_REQ_MAP_A ; 
 int FUNC1 (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int FUNC2 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 

int FUNC6(struct cudbg_init *pdbg_init,
			   struct cudbg_buffer *dbg_buff,
			   struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	struct cudbg_hw_sched *hw_sched_buff;
	int i, rc = 0;

	if (!padap->params.vpd.cclk)
		return CUDBG_STATUS_CCLK_NOT_DEFINED;

	rc = FUNC1(pdbg_init, dbg_buff, sizeof(struct cudbg_hw_sched),
			    &temp_buff);

	if (rc)
		return rc;

	hw_sched_buff = (struct cudbg_hw_sched *)temp_buff.data;
	hw_sched_buff->map = FUNC5(padap, TP_TX_MOD_QUEUE_REQ_MAP_A);
	hw_sched_buff->mode = FUNC0(FUNC5(padap, TP_MOD_CONFIG_A));
	FUNC4(padap, hw_sched_buff->pace_tab);
	for (i = 0; i < NTX_SCHED; ++i)
		FUNC3(padap, i, &hw_sched_buff->kbps[i],
				&hw_sched_buff->ipg[i], true);
	return FUNC2(pdbg_init, &temp_buff, dbg_buff);
}