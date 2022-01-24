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
struct iwl_mvm {int /*<<< orphan*/  trans; TYPE_1__* fw; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_LED_REG ; 
 int /*<<< orphan*/  CSR_LED_REG_TURN_OFF ; 
 int /*<<< orphan*/  CSR_LED_REG_TURN_ON ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_LED_CMD_SUPPORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iwl_mvm *mvm, bool on)
{
	if (FUNC0(&mvm->fw->ucode_capa,
			IWL_UCODE_TLV_CAPA_LED_CMD_SUPPORT)) {
		FUNC1(mvm, on);
		return;
	}

	FUNC2(mvm->trans, CSR_LED_REG,
		    on ? CSR_LED_REG_TURN_ON : CSR_LED_REG_TURN_OFF);
}