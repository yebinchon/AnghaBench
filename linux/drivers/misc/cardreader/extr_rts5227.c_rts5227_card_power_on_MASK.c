#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ocp_en; } ;
struct rtsx_pcr {TYPE_1__ option; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_OE ; 
 int /*<<< orphan*/  CARD_PWR_CTL ; 
 int LDO3318_PWR_MASK ; 
 int MS_OUTPUT_EN ; 
 int /*<<< orphan*/  PWR_GATE_CTRL ; 
 int SD_OUTPUT_EN ; 
 int SD_PARTIAL_POWER_ON ; 
 int SD_POWER_MASK ; 
 int SD_POWER_ON ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 int FUNC4 (struct rtsx_pcr*,int) ; 

__attribute__((used)) static int FUNC5(struct rtsx_pcr *pcr, int card)
{
	int err;

	if (pcr->option.ocp_en)
		FUNC2(pcr);

	FUNC3(pcr);
	FUNC1(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
			SD_POWER_MASK, SD_PARTIAL_POWER_ON);

	FUNC1(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
			LDO3318_PWR_MASK, 0x02);

	err = FUNC4(pcr, 100);
	if (err < 0)
		return err;

	/* To avoid too large in-rush current */
	FUNC0(20);
	FUNC3(pcr);
	FUNC1(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
			SD_POWER_MASK, SD_POWER_ON);

	FUNC1(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
			LDO3318_PWR_MASK, 0x06);

	FUNC1(pcr, WRITE_REG_CMD, CARD_OE,
			SD_OUTPUT_EN, SD_OUTPUT_EN);
	FUNC1(pcr, WRITE_REG_CMD, CARD_OE,
			MS_OUTPUT_EN, MS_OUTPUT_EN);
	return FUNC4(pcr, 100);
}