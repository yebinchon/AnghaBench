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
typedef  int u32 ;
struct cudbg_mps_tcam {int dummy; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int mps_tcam_size; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int CUDBG_SYSTEM_ERROR ; 
 int FUNC0 (struct cudbg_init*,struct cudbg_mps_tcam*,int) ; 
 int FUNC1 (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_init*,struct cudbg_buffer*) ; 
 int FUNC3 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 

int FUNC4(struct cudbg_init *pdbg_init,
			   struct cudbg_buffer *dbg_buff,
			   struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	u32 size = 0, i, n, total_size = 0;
	struct cudbg_mps_tcam *tcam;
	int rc;

	n = padap->params.arch.mps_tcam_size;
	size = sizeof(struct cudbg_mps_tcam) * n;
	rc = FUNC1(pdbg_init, dbg_buff, size, &temp_buff);
	if (rc)
		return rc;

	tcam = (struct cudbg_mps_tcam *)temp_buff.data;
	for (i = 0; i < n; i++) {
		rc = FUNC0(pdbg_init, tcam, i);
		if (rc) {
			cudbg_err->sys_err = rc;
			FUNC2(pdbg_init, &temp_buff);
			return rc;
		}
		total_size += sizeof(struct cudbg_mps_tcam);
		tcam++;
	}

	if (!total_size) {
		rc = CUDBG_SYSTEM_ERROR;
		cudbg_err->sys_err = rc;
		FUNC2(pdbg_init, &temp_buff);
		return rc;
	}
	return FUNC3(pdbg_init, &temp_buff, dbg_buff);
}