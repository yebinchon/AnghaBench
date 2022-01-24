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
struct rtsx_cr_option {scalar_t__ ocp_en; } ;
struct rtsx_pcr {struct rtsx_cr_option option; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_PWR_CTL ; 
 int /*<<< orphan*/  LDO3318_PWR_MASK ; 
 int /*<<< orphan*/  PWR_GATE_CTRL ; 
 int /*<<< orphan*/  SD_POWER_MASK ; 
 int SD_VCC_PARTIAL_POWER_ON ; 
 int SD_VCC_POWER_ON ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 int FUNC4 (struct rtsx_pcr*,int) ; 

__attribute__((used)) static int FUNC5(struct rtsx_pcr *pcr, int card)
{
	int err;
	struct rtsx_cr_option *option = &pcr->option;

	if (option->ocp_en)
		FUNC2(pcr);

	FUNC3(pcr);
	FUNC1(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
			SD_POWER_MASK, SD_VCC_PARTIAL_POWER_ON);
	FUNC1(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
			LDO3318_PWR_MASK, 0x02);
	err = FUNC4(pcr, 100);
	if (err < 0)
		return err;

	FUNC0(5);

	FUNC3(pcr);
	FUNC1(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
			SD_POWER_MASK, SD_VCC_POWER_ON);
	FUNC1(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
			LDO3318_PWR_MASK, 0x06);
	return FUNC4(pcr, 100);
}