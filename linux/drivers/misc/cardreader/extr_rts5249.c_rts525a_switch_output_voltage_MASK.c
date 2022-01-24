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
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LDO_CONFIG2 ; 
 int /*<<< orphan*/  LDO_D3318_18V ; 
 int /*<<< orphan*/  LDO_D3318_33V ; 
 int /*<<< orphan*/  LDO_D3318_MASK ; 
#define  OUTPUT_1V8 129 
#define  OUTPUT_3V3 128 
 int /*<<< orphan*/  SD_IO_USING_1V8 ; 
 int /*<<< orphan*/  SD_PAD_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int FUNC2 (struct rtsx_pcr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rtsx_pcr *pcr, u8 voltage)
{
	switch (voltage) {
	case OUTPUT_3V3:
		FUNC3(pcr, LDO_CONFIG2,
			LDO_D3318_MASK, LDO_D3318_33V);
		FUNC3(pcr, SD_PAD_CTL, SD_IO_USING_1V8, 0);
		break;
	case OUTPUT_1V8:
		FUNC3(pcr, LDO_CONFIG2,
			LDO_D3318_MASK, LDO_D3318_18V);
		FUNC3(pcr, SD_PAD_CTL, SD_IO_USING_1V8,
			SD_IO_USING_1V8);
		break;
	default:
		return -EINVAL;
	}

	FUNC1(pcr);
	FUNC0(pcr, voltage);
	return FUNC2(pcr, 100);
}