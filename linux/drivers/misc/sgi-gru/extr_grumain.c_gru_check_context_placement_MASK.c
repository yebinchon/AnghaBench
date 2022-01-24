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
struct gru_thread_state {scalar_t__ ts_tgid_owner; struct gru_state* ts_gru; } ;
struct gru_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ tgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  check_context_retarget_intr ; 
 int /*<<< orphan*/  check_context_unload ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct gru_state*,struct gru_thread_state*) ; 
 scalar_t__ FUNC2 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct gru_thread_state*,int) ; 

void FUNC4(struct gru_thread_state *gts)
{
	struct gru_state *gru;

	/*
	 * If the current task is the context owner, verify that the
	 * context is correctly placed. This test is skipped for non-owner
	 * references. Pthread apps use non-owner references to the CBRs.
	 */
	gru = gts->ts_gru;
	if (!gru || gts->ts_tgid_owner != current->tgid)
		return;

	if (!FUNC1(gru, gts)) {
		FUNC0(check_context_unload);
		FUNC3(gts, 1);
	} else if (FUNC2(gts)) {
		FUNC0(check_context_retarget_intr);
	}
}