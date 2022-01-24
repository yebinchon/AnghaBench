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
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int /*<<< orphan*/  size; scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  T4_REGMAP_SIZE ; 
 int /*<<< orphan*/  T5_REGMAP_SIZE ; 
 int FUNC0 (struct cudbg_init*,struct cudbg_buffer*,int /*<<< orphan*/ ,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,void*,int /*<<< orphan*/ ) ; 

int FUNC6(struct cudbg_init *pdbg_init,
			   struct cudbg_buffer *dbg_buff,
			   struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	u32 buf_size = 0;
	int rc = 0;

	if (FUNC2(padap->params.chip))
		buf_size = T4_REGMAP_SIZE;
	else if (FUNC3(padap->params.chip) || FUNC4(padap->params.chip))
		buf_size = T5_REGMAP_SIZE;

	rc = FUNC0(pdbg_init, dbg_buff, buf_size, &temp_buff);
	if (rc)
		return rc;
	FUNC5(padap, (void *)temp_buff.data, temp_buff.size);
	return FUNC1(pdbg_init, &temp_buff, dbg_buff);
}