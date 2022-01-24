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
typedef  int u8 ;
struct rtsx_pcr {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_PWR_CTL ; 
 int LDO3318_PWR_MASK ; 
 int MS_POWER_MASK ; 
 int MS_POWER_OFF ; 
 int PCR_MS_PMOS ; 
 int PMOS_STRG_400mA ; 
 int PMOS_STRG_MASK ; 
 int /*<<< orphan*/  PWR_GATE_CTRL ; 
 int RTSX_MS_CARD ; 
 int SD_POWER_MASK ; 
 int SD_POWER_OFF ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int FUNC2 (struct rtsx_pcr*,int) ; 

__attribute__((used)) static int FUNC3(struct rtsx_pcr *pcr, int card)
{
	u8 pwr_mask, pwr_off;

	pwr_mask = SD_POWER_MASK;
	pwr_off = SD_POWER_OFF;

	if ((pcr->flags & PCR_MS_PMOS) && (card == RTSX_MS_CARD)) {
		pwr_mask = MS_POWER_MASK;
		pwr_off = MS_POWER_OFF;
	}

	FUNC1(pcr);
	FUNC0(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
			pwr_mask | PMOS_STRG_MASK, pwr_off | PMOS_STRG_400mA);
	FUNC0(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
			LDO3318_PWR_MASK, 0x06);
	return FUNC2(pcr, 100);
}