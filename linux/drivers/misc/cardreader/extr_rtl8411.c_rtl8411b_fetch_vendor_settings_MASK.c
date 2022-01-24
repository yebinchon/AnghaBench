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
struct rtsx_pcr {void* sd30_drive_sel_3v3; void* sd30_drive_sel_1v8; int /*<<< orphan*/  aspm_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCR_SETTING_REG1 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rtsx_pcr *pcr)
{
	u32 reg = 0;

	FUNC3(pcr, PCR_SETTING_REG1, &reg);
	FUNC1(pcr, "Cfg 0x%x: 0x%x\n", PCR_SETTING_REG1, reg);

	if (!FUNC6(reg))
		return;

	pcr->aspm_en = FUNC4(reg);
	pcr->sd30_drive_sel_1v8 =
		FUNC0(FUNC5(reg));
	pcr->sd30_drive_sel_3v3 =
		FUNC0(FUNC2(reg));
}