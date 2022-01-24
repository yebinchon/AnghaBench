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
 int /*<<< orphan*/  BPP_LDO_ON ; 
 int /*<<< orphan*/  BPP_LDO_POWB ; 
 int /*<<< orphan*/  BPP_LDO_SUSPEND ; 
 int /*<<< orphan*/  BPP_POWER_10_PERCENT_ON ; 
 int /*<<< orphan*/  BPP_POWER_15_PERCENT_ON ; 
 int /*<<< orphan*/  BPP_POWER_5_PERCENT_ON ; 
 int /*<<< orphan*/  BPP_POWER_MASK ; 
 int /*<<< orphan*/  BPP_POWER_ON ; 
 int /*<<< orphan*/  CARD_PWR_CTL ; 
 int /*<<< orphan*/  LDO_CTL ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int FUNC2 (struct rtsx_pcr*,int) ; 
 int FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct rtsx_pcr *pcr, int card)
{
	int err;

	FUNC1(pcr);
	FUNC0(pcr, WRITE_REG_CMD, CARD_PWR_CTL,
			BPP_POWER_MASK, BPP_POWER_5_PERCENT_ON);
	FUNC0(pcr, WRITE_REG_CMD, LDO_CTL,
			BPP_LDO_POWB, BPP_LDO_SUSPEND);
	err = FUNC2(pcr, 100);
	if (err < 0)
		return err;

	/* To avoid too large in-rush current */
	FUNC4(150);

	err = FUNC3(pcr, CARD_PWR_CTL,
			BPP_POWER_MASK, BPP_POWER_10_PERCENT_ON);
	if (err < 0)
		return err;

	FUNC4(150);

	err = FUNC3(pcr, CARD_PWR_CTL,
			BPP_POWER_MASK, BPP_POWER_15_PERCENT_ON);
	if (err < 0)
		return err;

	FUNC4(150);

	err = FUNC3(pcr, CARD_PWR_CTL,
			BPP_POWER_MASK, BPP_POWER_ON);
	if (err < 0)
		return err;

	return FUNC3(pcr, LDO_CTL, BPP_LDO_POWB, BPP_LDO_ON);
}