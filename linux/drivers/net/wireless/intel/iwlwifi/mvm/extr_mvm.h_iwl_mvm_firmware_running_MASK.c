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
struct iwl_mvm {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_STATUS_FIRMWARE_RUNNING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC1(struct iwl_mvm *mvm)
{
	return FUNC0(IWL_MVM_STATUS_FIRMWARE_RUNNING, &mvm->status);
}