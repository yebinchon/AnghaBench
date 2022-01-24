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
struct gru_thread_state {int /*<<< orphan*/  ts_ctxlock; } ;
struct gru_blade_state {int /*<<< orphan*/  bs_kgts_sema; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  steal_kernel_context ; 
 int /*<<< orphan*/  steal_user_context ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gru_thread_state *gts,
		struct gru_blade_state *bs)
{
	if (FUNC1(gts)) {
		FUNC3(&bs->bs_kgts_sema);
		FUNC0(steal_kernel_context);
	} else {
		FUNC2(&gts->ts_ctxlock);
		FUNC0(steal_user_context);
	}
}