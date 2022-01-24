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
struct iwl_mvm {int /*<<< orphan*/  fwrt; int /*<<< orphan*/  trans; int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_STATUS_FIRMWARE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct iwl_mvm *mvm)
{
	FUNC6(&mvm->mutex);
	FUNC2(&mvm->fwrt);
	FUNC0(IWL_MVM_STATUS_FIRMWARE_RUNNING, &mvm->status);
	FUNC3(&mvm->fwrt);
	FUNC5(mvm->trans);
	FUNC1(&mvm->fwrt);
	FUNC4(&mvm->fwrt);
}