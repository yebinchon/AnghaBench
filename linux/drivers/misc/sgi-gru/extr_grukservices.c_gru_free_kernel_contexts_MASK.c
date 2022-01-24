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
struct gru_thread_state {scalar_t__ ts_gru; } ;
struct gru_blade_state {int /*<<< orphan*/  bs_kgts_sema; struct gru_thread_state* bs_kgts; } ;

/* Variables and functions */
 int GRU_MAX_BLADES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct gru_blade_state** gru_base ; 
 int /*<<< orphan*/  FUNC1 (struct gru_thread_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct gru_blade_state *bs;
	struct gru_thread_state *kgts;
	int bid, ret = 0;

	for (bid = 0; bid < GRU_MAX_BLADES; bid++) {
		bs = gru_base[bid];
		if (!bs)
			continue;

		/* Ignore busy contexts. Don't want to block here.  */
		if (FUNC0(&bs->bs_kgts_sema)) {
			kgts = bs->bs_kgts;
			if (kgts && kgts->ts_gru)
				FUNC1(kgts, 0);
			bs->bs_kgts = NULL;
			FUNC3(&bs->bs_kgts_sema);
			FUNC2(kgts);
		} else {
			ret++;
		}
	}
	return ret;
}