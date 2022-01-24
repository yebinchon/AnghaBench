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
typedef  int /*<<< orphan*/  u32 ;
struct cudbg_ulprx_la {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ULPRX_LA_SIZE ; 
 int FUNC0 (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ *) ; 

int FUNC3(struct cudbg_init *pdbg_init,
			   struct cudbg_buffer *dbg_buff,
			   struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	struct cudbg_ulprx_la *ulprx_la_buff;
	int rc;

	rc = FUNC0(pdbg_init, dbg_buff, sizeof(struct cudbg_ulprx_la),
			    &temp_buff);
	if (rc)
		return rc;

	ulprx_la_buff = (struct cudbg_ulprx_la *)temp_buff.data;
	FUNC2(padap, (u32 *)ulprx_la_buff->data);
	ulprx_la_buff->size = ULPRX_LA_SIZE;
	return FUNC1(pdbg_init, &temp_buff, dbg_buff);
}