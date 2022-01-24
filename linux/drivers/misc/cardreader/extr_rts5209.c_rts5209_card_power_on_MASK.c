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
 int MS_PARTIAL_POWER_ON ; 
 int MS_POWER_MASK ; 
 int MS_POWER_ON ; 
 int PCR_MS_PMOS ; 
 int /*<<< orphan*/  PWR_GATE_CTRL ; 
 int RTSX_MS_CARD ; 
 int SD_PARTIAL_POWER_ON ; 
 int SD_POWER_MASK ; 
 int SD_POWER_ON ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int FUNC2 (struct rtsx_pcr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rtsx_pcr *pcr, int card)
{
	int err;
	u8 pwr_mask, partial_pwr_on, pwr_on;

	pwr_mask = SD_POWER_MASK;
	partial_pwr_on = SD_PARTIAL_POWER_ON;
	pwr_on = SD_POWER_ON;

	if ((pcr->flags & PCR_MS_PMOS) && (card == RTSX_MS_CARD)) {
		pwr_mask = MS_POWER_MASK;
		partial_pwr_on = MS_PARTIAL_POWER_ON;
		pwr_on = MS_POWER_ON;
	}

	FUNC1(pcr);
	FUNC0(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
			pwr_mask, partial_pwr_on);
	FUNC0(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
			LDO3318_PWR_MASK, 0x04);
	err = FUNC2(pcr, 100);
	if (err < 0)
		return err;

	/* To avoid too large in-rush current */
	FUNC3(150);

	FUNC1(pcr);
	FUNC0(pcr, WRITE_REG_CMD, CARD_PWR_CTL, pwr_mask, pwr_on);
	FUNC0(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
			LDO3318_PWR_MASK, 0x00);
	return FUNC2(pcr, 100);
}