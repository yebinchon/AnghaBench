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
struct iwl_nvm_section {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct iwl_mvm {struct iwl_nvm_section* nvm_sections; TYPE_1__* trans; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct iwl_nvm_section*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,int) ; 
 int FUNC3 (struct iwl_mvm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct iwl_mvm *mvm)
{
	int i, ret = 0;
	struct iwl_nvm_section *sections = mvm->nvm_sections;

	FUNC1(mvm->trans->dev, "'Write to NVM\n");

	for (i = 0; i < FUNC0(mvm->nvm_sections); i++) {
		if (!mvm->nvm_sections[i].data || !mvm->nvm_sections[i].length)
			continue;
		ret = FUNC3(mvm, i, sections[i].data,
					    sections[i].length);
		if (ret < 0) {
			FUNC2(mvm, "iwl_mvm_send_cmd failed: %d\n", ret);
			break;
		}
	}
	return ret;
}