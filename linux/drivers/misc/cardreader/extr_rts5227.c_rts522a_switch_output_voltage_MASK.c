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
 int /*<<< orphan*/  OUTPUT_1V8 ; 
 int /*<<< orphan*/  OUTPUT_3V3 ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int FUNC2 (struct rtsx_pcr*,int) ; 
 int FUNC3 (struct rtsx_pcr*,int,int) ; 

__attribute__((used)) static int FUNC4(struct rtsx_pcr *pcr, u8 voltage)
{
	int err;

	if (voltage == OUTPUT_3V3) {
		err = FUNC3(pcr, 0x08, 0x57E4);
		if (err < 0)
			return err;
	} else if (voltage == OUTPUT_1V8) {
		err = FUNC3(pcr, 0x11, 0x3C02);
		if (err < 0)
			return err;
		err = FUNC3(pcr, 0x08, 0x54A4);
		if (err < 0)
			return err;
	} else {
		return -EINVAL;
	}

	/* set pad drive */
	FUNC1(pcr);
	FUNC0(pcr, voltage);
	return FUNC2(pcr, 100);
}