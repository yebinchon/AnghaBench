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
struct gru_thread_state {int ts_ctxnum; struct gru_mm_struct* ts_gms; } ;
struct gru_state {size_t gs_gid; scalar_t__ gs_asid_gen; int /*<<< orphan*/  gs_asid_lock; } ;
struct gru_mm_tracker {int mt_asid; unsigned short mt_ctxbitmap; scalar_t__ mt_asid_gen; } ;
struct gru_mm_struct {int /*<<< orphan*/ * ms_asidmap; int /*<<< orphan*/  ms_asid_lock; struct gru_mm_tracker* ms_asids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asid_new ; 
 int /*<<< orphan*/  asid_reuse ; 
 int FUNC3 (struct gru_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,struct gru_thread_state*,struct gru_mm_struct*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grudev ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct gru_state *gru,
					struct gru_thread_state *gts)
{
	struct gru_mm_struct *gms = gts->ts_gms;
	struct gru_mm_tracker *asids = &gms->ms_asids[gru->gs_gid];
	unsigned short ctxbitmap = (1 << gts->ts_ctxnum);
	int asid;

	FUNC5(&gms->ms_asid_lock);
	asid = asids->mt_asid;

	FUNC5(&gru->gs_asid_lock);
	if (asid == 0 || (asids->mt_ctxbitmap == 0 && asids->mt_asid_gen !=
			  gru->gs_asid_gen)) {
		asid = FUNC3(gru);
		asids->mt_asid = asid;
		asids->mt_asid_gen = gru->gs_asid_gen;
		FUNC1(asid_new);
	} else {
		FUNC1(asid_reuse);
	}
	FUNC6(&gru->gs_asid_lock);

	FUNC0(asids->mt_ctxbitmap & ctxbitmap);
	asids->mt_ctxbitmap |= ctxbitmap;
	if (!FUNC7(gru->gs_gid, gms->ms_asidmap))
		FUNC2(gru->gs_gid, gms->ms_asidmap);
	FUNC6(&gms->ms_asid_lock);

	FUNC4(grudev,
		"gid %d, gts %p, gms %p, ctxnum %d, asid 0x%x, asidmap 0x%lx\n",
		gru->gs_gid, gts, gms, gts->ts_ctxnum, asid,
		gms->ms_asidmap[0]);
	return asid;
}