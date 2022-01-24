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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct cudbg_region_info {int exist; int end; int /*<<< orphan*/  start; } ;
struct cudbg_meminfo {int /*<<< orphan*/  avail; } ;
struct cudbg_mem_desc {int limit; int /*<<< orphan*/  base; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CTXT_CNM ; 
 scalar_t__ CTXT_EGRESS ; 
 size_t CTXT_FLM ; 
 scalar_t__ CTXT_INGRESS ; 
 int CUDBG_MAX_FL_QIDS ; 
 int FUNC1 (scalar_t__) ; 
 int SGE_CTXT_SIZE ; 
 int /*<<< orphan*/  SGE_FLM_CFG_A ; 
 int FUNC2 (struct adapter*,struct cudbg_meminfo*) ; 
 int FUNC3 (struct adapter*,struct cudbg_meminfo*,scalar_t__,int /*<<< orphan*/ ,struct cudbg_mem_desc*) ; 
 int FUNC4 (struct adapter*,struct cudbg_meminfo*,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * cudbg_region ; 
 int /*<<< orphan*/  FUNC5 (struct cudbg_mem_desc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct adapter *padap,
				      struct cudbg_region_info *ctx_info,
				      u8 *mem_type)
{
	struct cudbg_mem_desc mem_desc;
	struct cudbg_meminfo meminfo;
	u32 i, j, value, found;
	u8 flq;
	int rc;

	rc = FUNC2(padap, &meminfo);
	if (rc)
		return rc;

	/* Get EGRESS and INGRESS context region size */
	for (i = CTXT_EGRESS; i <= CTXT_INGRESS; i++) {
		found = 0;
		FUNC5(&mem_desc, 0, sizeof(struct cudbg_mem_desc));
		for (j = 0; j < FUNC0(meminfo.avail); j++) {
			rc = FUNC3(padap, &meminfo, j,
						  cudbg_region[i],
						  &mem_desc);
			if (!rc) {
				found = 1;
				rc = FUNC4(padap, &meminfo, j,
							    &mem_desc.base,
							    &mem_desc.limit);
				if (rc) {
					ctx_info[i].exist = false;
					break;
				}
				ctx_info[i].exist = true;
				ctx_info[i].start = mem_desc.base;
				ctx_info[i].end = mem_desc.limit;
				mem_type[i] = j;
				break;
			}
		}
		if (!found)
			ctx_info[i].exist = false;
	}

	/* Get FLM and CNM max qid. */
	value = FUNC6(padap, SGE_FLM_CFG_A);

	/* Get number of data freelist queues */
	flq = FUNC1(value);
	ctx_info[CTXT_FLM].exist = true;
	ctx_info[CTXT_FLM].end = (CUDBG_MAX_FL_QIDS >> flq) * SGE_CTXT_SIZE;

	/* The number of CONM contexts are same as number of freelist
	 * queues.
	 */
	ctx_info[CTXT_CNM].exist = true;
	ctx_info[CTXT_CNM].end = ctx_info[CTXT_FLM].end;

	return 0;
}