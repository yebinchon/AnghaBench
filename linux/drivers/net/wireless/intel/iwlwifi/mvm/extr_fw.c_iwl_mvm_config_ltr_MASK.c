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
struct iwl_mvm {TYPE_1__* trans; } ;
struct iwl_ltr_config_cmd {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {int /*<<< orphan*/  ltr_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTR_CFG_FLAG_FEATURE_ENABLE ; 
 int /*<<< orphan*/  LTR_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_ltr_config_cmd*) ; 

__attribute__((used)) static int FUNC2(struct iwl_mvm *mvm)
{
	struct iwl_ltr_config_cmd cmd = {
		.flags = FUNC0(LTR_CFG_FLAG_FEATURE_ENABLE),
	};

	if (!mvm->trans->ltr_enabled)
		return 0;

	return FUNC1(mvm, LTR_CONFIG, 0,
				    sizeof(cmd), &cmd);
}