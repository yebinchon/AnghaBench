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
struct iwl_mvm {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  iwl_mvm_binding_iterator ; 

int FUNC2(struct iwl_mvm *mvm)
{
	unsigned long phy_ctxt_counter = 0;

	FUNC1(mvm->hw,
						   IEEE80211_IFACE_ITER_NORMAL,
						   iwl_mvm_binding_iterator,
						   &phy_ctxt_counter);

	return FUNC0(phy_ctxt_counter);
}