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
typedef  int u32 ;
typedef  int u16 ;
struct rtsx_cr_option {int ltr_enabled; int ltr_active; int /*<<< orphan*/  ltr_active_latency; scalar_t__ ltr_en; } ;
struct rtsx_pcr {int /*<<< orphan*/  pci; struct rtsx_cr_option option; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_L1_1_EN ; 
 int ASPM_L1_1_EN_MASK ; 
 int /*<<< orphan*/  ASPM_L1_2_EN ; 
 int ASPM_L1_2_EN_MASK ; 
 scalar_t__ FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2 ; 
 int PCI_EXP_DEVCTL2_LTR_EN ; 
 int /*<<< orphan*/  PCR_ASPM_SETTING_REG1 ; 
 int /*<<< orphan*/  PCR_ASPM_SETTING_REG2 ; 
 int /*<<< orphan*/  PID_524A ; 
 int /*<<< orphan*/  PM_L1_1_EN ; 
 int PM_L1_1_EN_MASK ; 
 int /*<<< orphan*/  PM_L1_2_EN ; 
 int PM_L1_2_EN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rtsx_pcr *pcr)
{
	struct rtsx_cr_option *option = &(pcr->option);
	u32 lval;

	if (FUNC0(pcr, PID_524A))
		FUNC2(pcr,
			PCR_ASPM_SETTING_REG1, &lval);
	else
		FUNC2(pcr,
			PCR_ASPM_SETTING_REG2, &lval);

	if (lval & ASPM_L1_1_EN_MASK)
		FUNC3(pcr, ASPM_L1_1_EN);

	if (lval & ASPM_L1_2_EN_MASK)
		FUNC3(pcr, ASPM_L1_2_EN);

	if (lval & PM_L1_1_EN_MASK)
		FUNC3(pcr, PM_L1_1_EN);

	if (lval & PM_L1_2_EN_MASK)
		FUNC3(pcr, PM_L1_2_EN);

	if (option->ltr_en) {
		u16 val;

		FUNC1(pcr->pci, PCI_EXP_DEVCTL2, &val);
		if (val & PCI_EXP_DEVCTL2_LTR_EN) {
			option->ltr_enabled = true;
			option->ltr_active = true;
			FUNC4(pcr, option->ltr_active_latency);
		} else {
			option->ltr_enabled = false;
		}
	}
}