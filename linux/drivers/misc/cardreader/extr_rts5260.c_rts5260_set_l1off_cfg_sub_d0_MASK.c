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
typedef  int u32 ;
struct rtsx_cr_option {int /*<<< orphan*/  ltr_l1off_sspwrgate; int /*<<< orphan*/  ltr_l1off_snooze_sspwrgate; } ;
struct rtsx_pcr {struct rtsx_cr_option option; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_L1_1_EN ; 
 int /*<<< orphan*/  ASPM_L1_2_EN ; 
 int /*<<< orphan*/  L1OFF_MBIAS2_EN_5250 ; 
 int /*<<< orphan*/  LTR_L1SS_PWR_GATE_CHECK_CARD_EN ; 
 int MS_EXIST ; 
 int /*<<< orphan*/  RTSX_BIPR ; 
 int SD_EXIST ; 
 int FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rtsx_pcr *pcr, int active)
{
	struct rtsx_cr_option *option = &pcr->option;
	u32 interrupt = FUNC1(pcr, RTSX_BIPR);
	int card_exist = (interrupt & SD_EXIST) | (interrupt & MS_EXIST);
	int aspm_L1_1, aspm_L1_2;
	u8 val = 0;

	aspm_L1_1 = FUNC0(pcr, ASPM_L1_1_EN);
	aspm_L1_2 = FUNC0(pcr, ASPM_L1_2_EN);

	if (active) {
		/* run, latency: 60us */
		if (aspm_L1_1)
			val = option->ltr_l1off_snooze_sspwrgate;
	} else {
		/* l1off, latency: 300us */
		if (aspm_L1_2)
			val = option->ltr_l1off_sspwrgate;
	}

	if (aspm_L1_1 || aspm_L1_2) {
		if (FUNC0(pcr,
					LTR_L1SS_PWR_GATE_CHECK_CARD_EN)) {
			if (card_exist)
				val &= ~L1OFF_MBIAS2_EN_5250;
			else
				val |= L1OFF_MBIAS2_EN_5250;
		}
	}
	FUNC2(pcr, val);
}