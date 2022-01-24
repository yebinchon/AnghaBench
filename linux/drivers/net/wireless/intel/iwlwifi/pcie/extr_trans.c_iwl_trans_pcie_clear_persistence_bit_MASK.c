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
typedef  int u32 ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {int device_family; } ;

/* Variables and functions */
 int EPERM ; 
 int HPM_DEBUG ; 
#define  IWL_DEVICE_FAMILY_22000 129 
#define  IWL_DEVICE_FAMILY_9000 128 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 int PERSISTENCE_BIT ; 
 int PREG_PRPH_WPROT_22000 ; 
 int PREG_PRPH_WPROT_9000 ; 
 int PREG_WFPM_ACCESS ; 
 int FUNC1 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int,int) ; 

__attribute__((used)) static int FUNC3(struct iwl_trans *trans)
{
	u32 hpm, wprot;

	switch (trans->trans_cfg->device_family) {
	case IWL_DEVICE_FAMILY_9000:
		wprot = PREG_PRPH_WPROT_9000;
		break;
	case IWL_DEVICE_FAMILY_22000:
		wprot = PREG_PRPH_WPROT_22000;
		break;
	default:
		return 0;
	}

	hpm = FUNC1(trans, HPM_DEBUG);
	if (hpm != 0xa5a5a5a0 && (hpm & PERSISTENCE_BIT)) {
		u32 wprot_val = FUNC1(trans, wprot);

		if (wprot_val & PREG_WFPM_ACCESS) {
			FUNC0(trans,
				"Error, can not clear persistence bit\n");
			return -EPERM;
		}
		FUNC2(trans, HPM_DEBUG,
					    hpm & ~PERSISTENCE_BIT);
	}

	return 0;
}