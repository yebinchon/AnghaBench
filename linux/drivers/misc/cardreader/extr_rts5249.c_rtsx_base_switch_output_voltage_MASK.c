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
typedef  int /*<<< orphan*/  u16 ;
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int) ; 
 int EINVAL ; 
#define  OUTPUT_1V8 129 
#define  OUTPUT_3V3 128 
 int /*<<< orphan*/  PHY_BACR ; 
 int /*<<< orphan*/  PHY_BACR_BASIC_MASK ; 
 int /*<<< orphan*/  PHY_TUNE ; 
 int /*<<< orphan*/  PHY_TUNE_D18_1V7 ; 
 int /*<<< orphan*/  PHY_TUNE_D18_1V8 ; 
 int /*<<< orphan*/  PHY_TUNE_VOLTAGE_3V3 ; 
 int /*<<< orphan*/  PHY_TUNE_VOLTAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 int FUNC4 (struct rtsx_pcr*,int) ; 
 int FUNC5 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rtsx_pcr *pcr, u8 voltage)
{
	int err;
	u16 append;

	switch (voltage) {
	case OUTPUT_3V3:
		err = FUNC5(pcr, PHY_TUNE, PHY_TUNE_VOLTAGE_MASK,
			PHY_TUNE_VOLTAGE_3V3);
		if (err < 0)
			return err;
		break;
	case OUTPUT_1V8:
		append = PHY_TUNE_D18_1V8;
		if (FUNC0(pcr, 0x5249)) {
			err = FUNC5(pcr, PHY_BACR,
				PHY_BACR_BASIC_MASK, 0);
			if (err < 0)
				return err;
			append = PHY_TUNE_D18_1V7;
		}

		err = FUNC5(pcr, PHY_TUNE, PHY_TUNE_VOLTAGE_MASK,
			append);
		if (err < 0)
			return err;
		break;
	default:
		FUNC1(pcr, "unknown output voltage %d\n", voltage);
		return -EINVAL;
	}

	/* set pad drive */
	FUNC3(pcr);
	FUNC2(pcr, voltage);
	return FUNC4(pcr, 100);
}