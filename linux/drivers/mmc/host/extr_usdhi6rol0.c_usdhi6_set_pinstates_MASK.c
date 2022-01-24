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
struct usdhi6_host {int /*<<< orphan*/  pins_default; int /*<<< orphan*/  pinctrl; int /*<<< orphan*/  pins_uhs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  MMC_SIGNAL_VOLTAGE_120 129 
#define  MMC_SIGNAL_VOLTAGE_180 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usdhi6_host *host, int voltage)
{
	if (FUNC0(host->pins_uhs))
		return 0;

	switch (voltage) {
	case MMC_SIGNAL_VOLTAGE_180:
	case MMC_SIGNAL_VOLTAGE_120:
		return FUNC1(host->pinctrl,
					    host->pins_uhs);

	default:
		return FUNC1(host->pinctrl,
					    host->pins_default);
	}
}