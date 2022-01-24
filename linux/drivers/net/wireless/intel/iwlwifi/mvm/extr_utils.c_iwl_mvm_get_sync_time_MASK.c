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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm {int ps_disabled; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iwl_mvm *mvm, u32 *gp2, u64 *boottime)
{
	bool ps_disabled;

	FUNC3(&mvm->mutex);

	/* Disable power save when reading GP2 */
	ps_disabled = mvm->ps_disabled;
	if (!ps_disabled) {
		mvm->ps_disabled = true;
		FUNC1(mvm);
	}

	*gp2 = FUNC0(mvm);
	*boottime = FUNC2();

	if (!ps_disabled) {
		mvm->ps_disabled = ps_disabled;
		FUNC1(mvm);
	}
}