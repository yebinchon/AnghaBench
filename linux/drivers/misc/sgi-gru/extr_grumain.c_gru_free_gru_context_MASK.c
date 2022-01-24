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
struct gru_thread_state {size_t ts_ctxnum; int ts_blade; struct gru_state* ts_gru; } ;
struct gru_state {int /*<<< orphan*/  gs_lock; int /*<<< orphan*/  gs_context_map; int /*<<< orphan*/ ** gs_gts; int /*<<< orphan*/  gs_gid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t NULLCTX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free_context ; 
 int /*<<< orphan*/  FUNC3 (struct gru_state*,struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct gru_thread_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grudev ; 
 int /*<<< orphan*/  FUNC5 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct gru_thread_state *gts)
{
	struct gru_state *gru;

	gru = gts->ts_gru;
	FUNC4(grudev, "gts %p, gid %d\n", gts, gru->gs_gid);

	FUNC6(&gru->gs_lock);
	gru->gs_gts[gts->ts_ctxnum] = NULL;
	FUNC3(gru, gts);
	FUNC0(FUNC8(gts->ts_ctxnum, &gru->gs_context_map) == 0);
	FUNC2(gts->ts_ctxnum, &gru->gs_context_map);
	gts->ts_ctxnum = NULLCTX;
	gts->ts_gru = NULL;
	gts->ts_blade = -1;
	FUNC7(&gru->gs_lock);

	FUNC5(gts);
	FUNC1(free_context);
}