#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flcerr; scalar_t__ flcdone; } ;
union ich8_hws_flash_status {TYPE_2__ hsf_status; void* regval; } ;
struct TYPE_4__ {int flcgo; } ;
union ich8_hws_flash_ctrl {int regval; TYPE_1__ hsf_ctrl; } ;
typedef  scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ERR_NVM ; 
 int /*<<< orphan*/  ICH_FLASH_HSFCTL ; 
 int /*<<< orphan*/  ICH_FLASH_HSFSTS ; 
 scalar_t__ e1000_pch_spt ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw, u32 timeout)
{
	union ich8_hws_flash_ctrl hsflctl;
	union ich8_hws_flash_status hsfsts;
	u32 i = 0;

	/* Start a cycle by writing 1 in Flash Cycle Go in Hw Flash Control */
	if (hw->mac.type >= e1000_pch_spt)
		hsflctl.regval = FUNC1(ICH_FLASH_HSFSTS) >> 16;
	else
		hsflctl.regval = FUNC0(ICH_FLASH_HSFCTL);
	hsflctl.hsf_ctrl.flcgo = 1;

	if (hw->mac.type >= e1000_pch_spt)
		FUNC3(ICH_FLASH_HSFSTS, hsflctl.regval << 16);
	else
		FUNC2(ICH_FLASH_HSFCTL, hsflctl.regval);

	/* wait till FDONE bit is set to 1 */
	do {
		hsfsts.regval = FUNC0(ICH_FLASH_HSFSTS);
		if (hsfsts.hsf_status.flcdone)
			break;
		FUNC4(1);
	} while (i++ < timeout);

	if (hsfsts.hsf_status.flcdone && !hsfsts.hsf_status.flcerr)
		return 0;

	return -E1000_ERR_NVM;
}