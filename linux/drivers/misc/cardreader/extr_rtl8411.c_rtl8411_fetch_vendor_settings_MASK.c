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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtsx_pcr {int card_drive_sel; int /*<<< orphan*/  sd30_drive_sel_3v3; int /*<<< orphan*/  sd30_drive_sel_1v8; int /*<<< orphan*/  aspm_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCR_SETTING_REG1 ; 
 int /*<<< orphan*/  PCR_SETTING_REG3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct rtsx_pcr *pcr)
{
	u32 reg1 = 0;
	u8 reg3 = 0;

	FUNC4(pcr, PCR_SETTING_REG1, &reg1);
	FUNC1(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG1, reg1);

	if (!FUNC8(reg1))
		return;

	pcr->aspm_en = FUNC5(reg1);
	pcr->sd30_drive_sel_1v8 =
		FUNC0(FUNC7(reg1));
	pcr->card_drive_sel &= 0x3F;
	pcr->card_drive_sel |= FUNC6(reg1);

	FUNC3(pcr, PCR_SETTING_REG3, &reg3);
	FUNC1(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG3, reg3);
	pcr->sd30_drive_sel_3v3 = FUNC2(reg3);
}