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
struct rtsx_pcr {int card_drive_sel; int /*<<< orphan*/  flags; int /*<<< orphan*/  sd30_drive_sel_3v3; int /*<<< orphan*/  sd30_drive_sel_1v8; int /*<<< orphan*/  aspm_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCR_REVERSE_SOCKET ; 
 int /*<<< orphan*/  PCR_SETTING_REG1 ; 
 int /*<<< orphan*/  PCR_SETTING_REG2 ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct rtsx_pcr *pcr)
{
	u32 reg;

	FUNC1(pcr, PCR_SETTING_REG1, &reg);
	FUNC0(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG1, reg);

	if (!FUNC7(reg))
		return;

	pcr->aspm_en = FUNC3(reg);
	pcr->sd30_drive_sel_1v8 = FUNC5(reg);
	pcr->card_drive_sel &= 0x3F;
	pcr->card_drive_sel |= FUNC4(reg);

	FUNC1(pcr, PCR_SETTING_REG2, &reg);
	FUNC0(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG2, reg);
	pcr->sd30_drive_sel_3v3 = FUNC6(reg);
	if (FUNC2(reg))
		pcr->flags |= PCR_REVERSE_SOCKET;
}