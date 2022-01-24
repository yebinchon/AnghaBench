#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct cudbg_init*,struct cudbg_buffer*) ; 
 int FUNC2 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC3 (struct adapter*) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ *) ; 

int FUNC5(struct cudbg_init *pdbg_init,
		      struct cudbg_buffer *dbg_buff,
		      struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	int rc, nentries;

	nentries = FUNC3(padap);
	rc = FUNC0(pdbg_init, dbg_buff, nentries * sizeof(u16),
			    &temp_buff);
	if (rc)
		return rc;

	rc = FUNC4(padap, (u16 *)temp_buff.data);
	if (rc) {
		cudbg_err->sys_err = rc;
		FUNC1(pdbg_init, &temp_buff);
		return rc;
	}
	return FUNC2(pdbg_init, &temp_buff, dbg_buff);
}