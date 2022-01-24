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
struct rtsx_usb_sdmmc {unsigned char power_mode; } ;

/* Variables and functions */
 unsigned char MMC_POWER_OFF ; 
 unsigned char MMC_POWER_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_usb_sdmmc*) ; 
 int FUNC3 (struct rtsx_usb_sdmmc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_usb_sdmmc*) ; 

__attribute__((used)) static int FUNC5(struct rtsx_usb_sdmmc *host,
		unsigned char power_mode)
{
	int err;

	if (power_mode != MMC_POWER_OFF)
		power_mode = MMC_POWER_ON;

	if (power_mode == host->power_mode)
		return 0;

	if (power_mode == MMC_POWER_OFF) {
		err = FUNC2(host);
		FUNC1(FUNC4(host));
	} else {
		FUNC0(FUNC4(host));
		err = FUNC3(host);
	}

	if (!err)
		host->power_mode = power_mode;

	return err;
}