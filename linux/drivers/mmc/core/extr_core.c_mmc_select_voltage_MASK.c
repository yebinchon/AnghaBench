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
typedef  int u32 ;
struct TYPE_2__ {int vdd; } ;
struct mmc_host {int ocr_avail; int caps2; TYPE_1__ ios; } ;

/* Variables and functions */
 int MMC_CAP2_FULL_PWR_CYCLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,int) ; 

u32 FUNC5(struct mmc_host *host, u32 ocr)
{
	int bit;

	/*
	 * Sanity check the voltages that the card claims to
	 * support.
	 */
	if (ocr & 0x7F) {
		FUNC0(FUNC3(host),
		"card claims to support voltages below defined range\n");
		ocr &= ~0x7F;
	}

	ocr &= host->ocr_avail;
	if (!ocr) {
		FUNC0(FUNC3(host), "no support for card's volts\n");
		return 0;
	}

	if (host->caps2 & MMC_CAP2_FULL_PWR_CYCLE) {
		bit = FUNC1(ocr) - 1;
		ocr &= 3 << bit;
		FUNC4(host, ocr);
	} else {
		bit = FUNC2(ocr) - 1;
		ocr &= 3 << bit;
		if (bit != host->ios.vdd)
			FUNC0(FUNC3(host), "exceeding card's volts\n");
	}

	return ocr;
}