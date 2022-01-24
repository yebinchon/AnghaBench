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
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_PWR_CTL ; 
 int /*<<< orphan*/  LDO3318_PWR_MASK ; 
 int /*<<< orphan*/  PWR_GATE_CTRL ; 
 int SD_PARTIAL_POWER_ON ; 
 int /*<<< orphan*/  SD_POWER_MASK ; 
 int SD_POWER_ON ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int FUNC2 (struct rtsx_pcr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rtsx_pcr *pcr, int card)
{
	int err;

	FUNC1(pcr);
	FUNC0(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
			SD_POWER_MASK, SD_PARTIAL_POWER_ON);
	FUNC0(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
			LDO3318_PWR_MASK, 0x02);
	err = FUNC2(pcr, 100);
	if (err < 0)
		return err;

	/* To avoid too large in-rush current */
	FUNC3(150);

	FUNC1(pcr);
	FUNC0(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
			SD_POWER_MASK, SD_POWER_ON);
	FUNC0(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
			LDO3318_PWR_MASK, 0x06);
	return FUNC2(pcr, 100);
}