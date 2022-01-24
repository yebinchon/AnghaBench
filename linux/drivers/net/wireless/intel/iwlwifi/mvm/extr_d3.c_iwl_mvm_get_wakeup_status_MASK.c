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
struct iwl_wowlan_status {int dummy; } ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  OFFLOADS_QUERY_CMD ; 
 int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iwl_wowlan_status* FUNC2 (struct iwl_mvm*) ; 

__attribute__((used)) static struct iwl_wowlan_status *
FUNC3(struct iwl_mvm *mvm)
{
	int ret;

	/* only for tracing for now */
	ret = FUNC1(mvm, OFFLOADS_QUERY_CMD, 0, 0, NULL);
	if (ret)
		FUNC0(mvm, "failed to query offload statistics (%d)\n", ret);

	return FUNC2(mvm);
}