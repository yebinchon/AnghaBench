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
typedef  int /*<<< orphan*/  u64 ;
struct cudbg_tp_la {scalar_t__ data; int /*<<< orphan*/  mode; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TPLA_SIZE ; 
 int /*<<< orphan*/  TP_DBG_LA_CONFIG_A ; 
 int FUNC1 (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int FUNC2 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(struct cudbg_init *pdbg_init,
			struct cudbg_buffer *dbg_buff,
			struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	struct cudbg_tp_la *tp_la_buff;
	int size, rc;

	size = sizeof(struct cudbg_tp_la) + TPLA_SIZE *  sizeof(u64);
	rc = FUNC1(pdbg_init, dbg_buff, size, &temp_buff);
	if (rc)
		return rc;

	tp_la_buff = (struct cudbg_tp_la *)temp_buff.data;
	tp_la_buff->mode = FUNC0(FUNC3(padap, TP_DBG_LA_CONFIG_A));
	FUNC4(padap, (u64 *)tp_la_buff->data, NULL);
	return FUNC2(pdbg_init, &temp_buff, dbg_buff);
}