#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct iwl_scan_req_umac {TYPE_1__ v1; TYPE_4__ v6; TYPE_3__ v7; TYPE_2__ v8; } ;
struct iwl_mvm {struct iwl_scan_req_umac* scan_cmd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iwl_mvm*) ; 
 scalar_t__ FUNC1 (struct iwl_mvm*) ; 
 scalar_t__ FUNC2 (struct iwl_mvm*) ; 

__attribute__((used)) static inline void *FUNC3(struct iwl_mvm *mvm)
{
	struct iwl_scan_req_umac *cmd = mvm->scan_cmd;

	if (FUNC2(mvm))
		return (void *)&cmd->v8.data;

	if (FUNC1(mvm))
		return (void *)&cmd->v7.data;

	if (FUNC0(mvm))
		return (void *)&cmd->v6.data;

	return (void *)&cmd->v1.data;
}