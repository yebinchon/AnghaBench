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
typedef  size_t u8 ;
struct cudbg_meminfo {TYPE_1__* avail; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {unsigned long limit; unsigned long base; } ;

/* Variables and functions */
 int FUNC0 (struct adapter*,struct cudbg_meminfo*) ; 
 int FUNC1 (struct adapter*,struct cudbg_meminfo*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_init*,struct cudbg_error*) ; 
 int /*<<< orphan*/  FUNC3 (struct cudbg_meminfo*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned long FUNC4(struct cudbg_init *pdbg_init,
					   struct cudbg_error *cudbg_err,
					   u8 mem_type)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_meminfo mem_info;
	u8 mc_idx;
	int rc;

	FUNC3(&mem_info, 0, sizeof(struct cudbg_meminfo));
	rc = FUNC0(padap, &mem_info);
	if (rc)
		return rc;

	FUNC2(pdbg_init, cudbg_err);
	rc = FUNC1(padap, &mem_info, mem_type, &mc_idx);
	if (rc)
		return rc;

	return mem_info.avail[mc_idx].limit - mem_info.avail[mc_idx].base;
}