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
typedef  int /*<<< orphan*/  u32 ;
struct rtsx_pcr {int /*<<< orphan*/  card_drive_sel; int /*<<< orphan*/  sd30_drive_sel_3v3; int /*<<< orphan*/  sd30_drive_sel_1v8; int /*<<< orphan*/  aspm_en; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCR_MS_PMOS ; 
 int /*<<< orphan*/  PCR_SETTING_REG1 ; 
 int /*<<< orphan*/  PCR_SETTING_REG2 ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct rtsx_pcr *pcr)
{
	u32 reg;

	FUNC8(pcr, PCR_SETTING_REG1, &reg);
	FUNC0(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG1, reg);

	if (FUNC6(reg)) {
		if (FUNC1(reg))
			pcr->flags |= PCR_MS_PMOS;
		pcr->aspm_en = FUNC2(reg);
	}

	FUNC8(pcr, PCR_SETTING_REG2, &reg);
	FUNC0(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG2, reg);

	if (FUNC7(reg)) {
		pcr->sd30_drive_sel_1v8 =
			FUNC4(reg);
		pcr->sd30_drive_sel_3v3 =
			FUNC5(reg);
		pcr->card_drive_sel = FUNC3(reg);
	}
}