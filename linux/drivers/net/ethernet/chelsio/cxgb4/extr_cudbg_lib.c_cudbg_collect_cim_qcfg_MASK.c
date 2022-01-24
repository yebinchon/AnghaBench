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
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_cim_qcfg {int /*<<< orphan*/  thres; int /*<<< orphan*/  size; int /*<<< orphan*/  base; int /*<<< orphan*/  obq_wr; int /*<<< orphan*/  stat; int /*<<< orphan*/  chip; } ;
struct cudbg_buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UP_IBQ_0_RDADDR_A ; 
 int /*<<< orphan*/  UP_OBQ_0_REALADDR_A ; 
 int FUNC1 (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_init*,struct cudbg_buffer*) ; 
 int FUNC3 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct cudbg_init *pdbg_init,
			   struct cudbg_buffer *dbg_buff,
			   struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	struct cudbg_cim_qcfg *cim_qcfg_data;
	int rc;

	rc = FUNC1(pdbg_init, dbg_buff, sizeof(struct cudbg_cim_qcfg),
			    &temp_buff);
	if (rc)
		return rc;

	cim_qcfg_data = (struct cudbg_cim_qcfg *)temp_buff.data;
	cim_qcfg_data->chip = padap->params.chip;
	rc = FUNC4(padap, UP_IBQ_0_RDADDR_A,
			 FUNC0(cim_qcfg_data->stat), cim_qcfg_data->stat);
	if (rc) {
		cudbg_err->sys_err = rc;
		FUNC2(pdbg_init, &temp_buff);
		return rc;
	}

	rc = FUNC4(padap, UP_OBQ_0_REALADDR_A,
			 FUNC0(cim_qcfg_data->obq_wr),
			 cim_qcfg_data->obq_wr);
	if (rc) {
		cudbg_err->sys_err = rc;
		FUNC2(pdbg_init, &temp_buff);
		return rc;
	}

	FUNC5(padap, cim_qcfg_data->base, cim_qcfg_data->size,
			 cim_qcfg_data->thres);
	return FUNC3(pdbg_init, &temp_buff, dbg_buff);
}