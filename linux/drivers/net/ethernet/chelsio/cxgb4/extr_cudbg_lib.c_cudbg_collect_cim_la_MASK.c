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
typedef  int /*<<< orphan*/  u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int cim_la_size; int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 int /*<<< orphan*/  UP_UP_DBG_LA_CFG_A ; 
 int FUNC0 (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct cudbg_init*,struct cudbg_buffer*) ; 
 int FUNC2 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(struct cudbg_init *pdbg_init,
			 struct cudbg_buffer *dbg_buff,
			 struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	int size, rc;
	u32 cfg = 0;

	if (FUNC3(padap->params.chip)) {
		size = padap->params.cim_la_size / 10 + 1;
		size *= 10 * sizeof(u32);
	} else {
		size = padap->params.cim_la_size / 8;
		size *= 8 * sizeof(u32);
	}

	size += sizeof(cfg);
	rc = FUNC0(pdbg_init, dbg_buff, size, &temp_buff);
	if (rc)
		return rc;

	rc = FUNC5(padap, UP_UP_DBG_LA_CFG_A, 1, &cfg);
	if (rc) {
		cudbg_err->sys_err = rc;
		FUNC1(pdbg_init, &temp_buff);
		return rc;
	}

	FUNC4((char *)temp_buff.data, &cfg, sizeof(cfg));
	rc = FUNC6(padap,
			    (u32 *)((char *)temp_buff.data + sizeof(cfg)),
			    NULL);
	if (rc < 0) {
		cudbg_err->sys_err = rc;
		FUNC1(pdbg_init, &temp_buff);
		return rc;
	}
	return FUNC2(pdbg_init, &temp_buff, dbg_buff);
}