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
struct TYPE_2__ {unsigned long ts; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; scalar_t__ paused; scalar_t__ uapsd_nonagg_ts; } ;
struct iwl_mvm {TYPE_1__ tcm; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_UAPSD_NONAGG_PERIOD ; 
 scalar_t__ MVM_TCM_PERIOD ; 
 unsigned long FUNC0 (struct iwl_mvm*,unsigned long,int) ; 
 scalar_t__ FUNC1 (struct iwl_mvm*) ; 
 scalar_t__ FUNC2 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (unsigned long,scalar_t__) ; 

void FUNC12(struct iwl_mvm *mvm)
{
	unsigned long ts = jiffies;
	bool handle_uapsd =
		FUNC11(ts, mvm->tcm.uapsd_nonagg_ts +
			       FUNC4(IWL_MVM_UAPSD_NONAGG_PERIOD));

	FUNC9(&mvm->tcm.lock);
	if (mvm->tcm.paused || !FUNC11(ts, mvm->tcm.ts + MVM_TCM_PERIOD)) {
		FUNC10(&mvm->tcm.lock);
		return;
	}
	FUNC10(&mvm->tcm.lock);

	if (handle_uapsd && FUNC1(mvm)) {
		FUNC5(&mvm->mutex);
		if (FUNC2(mvm, true))
			handle_uapsd = false;
		FUNC6(&mvm->mutex);
	}

	FUNC9(&mvm->tcm.lock);
	/* re-check if somebody else won the recheck race */
	if (!mvm->tcm.paused && FUNC11(ts, mvm->tcm.ts + MVM_TCM_PERIOD)) {
		/* calculate statistics */
		unsigned long work_delay = FUNC0(mvm, ts,
								  handle_uapsd);

		/* the memset needs to be visible before the timestamp */
		FUNC8();
		mvm->tcm.ts = ts;
		if (work_delay)
			FUNC7(&mvm->tcm.work, work_delay);
	}
	FUNC10(&mvm->tcm.lock);

	FUNC3(mvm);
}