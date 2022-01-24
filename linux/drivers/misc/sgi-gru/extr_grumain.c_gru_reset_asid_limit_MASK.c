#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gru_state {int gs_gid; int gs_asid_limit; int gs_asid; TYPE_3__** gs_gts; } ;
struct TYPE_6__ {TYPE_2__* ts_gms; } ;
struct TYPE_5__ {TYPE_1__* ms_asids; } ;
struct TYPE_4__ {int mt_asid; } ;

/* Variables and functions */
 scalar_t__ ASID_INC ; 
 int GRU_NUM_CCH ; 
 int MAX_ASID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asid_next ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct gru_state*) ; 
 int FUNC3 (struct gru_state*) ; 
 int /*<<< orphan*/  grudev ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(struct gru_state *gru, int asid)
{
	int i, gid, inuse_asid, limit;

	FUNC1(grudev, "gid %d, asid 0x%x\n", gru->gs_gid, asid);
	FUNC0(asid_next);
	limit = MAX_ASID;
	if (asid >= limit)
		asid = FUNC3(gru);
	FUNC2(gru);
	gid = gru->gs_gid;
again:
	for (i = 0; i < GRU_NUM_CCH; i++) {
		if (!gru->gs_gts[i] || FUNC4(gru->gs_gts[i]))
			continue;
		inuse_asid = gru->gs_gts[i]->ts_gms->ms_asids[gid].mt_asid;
		FUNC1(grudev, "gid %d, gts %p, gms %p, inuse 0x%x, cxt %d\n",
			gru->gs_gid, gru->gs_gts[i], gru->gs_gts[i]->ts_gms,
			inuse_asid, i);
		if (inuse_asid == asid) {
			asid += ASID_INC;
			if (asid >= limit) {
				/*
				 * empty range: reset the range limit and
				 * start over
				 */
				limit = MAX_ASID;
				if (asid >= MAX_ASID)
					asid = FUNC3(gru);
				goto again;
			}
		}

		if ((inuse_asid > asid) && (inuse_asid < limit))
			limit = inuse_asid;
	}
	gru->gs_asid_limit = limit;
	gru->gs_asid = asid;
	FUNC1(grudev, "gid %d, new asid 0x%x, new_limit 0x%x\n", gru->gs_gid,
					asid, limit);
	return asid;
}