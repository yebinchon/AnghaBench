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
struct TYPE_2__ {int paused; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; } ;
struct iwl_mvm {TYPE_1__ tcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iwl_mvm *mvm, bool with_cancel)
{
	FUNC1(&mvm->tcm.lock);
	mvm->tcm.paused = true;
	FUNC2(&mvm->tcm.lock);
	if (with_cancel)
		FUNC0(&mvm->tcm.work);
}