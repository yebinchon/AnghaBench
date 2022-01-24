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
struct madera {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MADERA_BOOT_DONE_EINT1 ; 
 unsigned int MADERA_BOOT_DONE_STS1 ; 
 int MADERA_BOOT_POLL_INTERVAL_USEC ; 
 int /*<<< orphan*/  MADERA_BOOT_POLL_TIMEOUT_USEC ; 
 int /*<<< orphan*/  MADERA_IRQ1_RAW_STATUS_1 ; 
 int /*<<< orphan*/  MADERA_IRQ1_STATUS_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct madera *madera)
{
	ktime_t timeout;
	unsigned int val = 0;
	int ret = 0;

	/*
	 * We can't use an interrupt as we need to runtime resume to do so,
	 * so we poll the status bit. This won't race with the interrupt
	 * handler because it will be blocked on runtime resume.
	 * The chip could NAK a read request while it is booting so ignore
	 * errors from regmap_read.
	 */
	timeout = FUNC1(FUNC3(), MADERA_BOOT_POLL_TIMEOUT_USEC);
	FUNC5(madera->regmap, MADERA_IRQ1_RAW_STATUS_1, &val);
	while (!(val & MADERA_BOOT_DONE_STS1) &&
	       !FUNC2(FUNC3(), timeout)) {
		FUNC7(MADERA_BOOT_POLL_INTERVAL_USEC / 2,
			     MADERA_BOOT_POLL_INTERVAL_USEC);
		FUNC5(madera->regmap, MADERA_IRQ1_RAW_STATUS_1, &val);
	}

	if (!(val & MADERA_BOOT_DONE_STS1)) {
		FUNC0(madera->dev, "Polling BOOT_DONE_STS timed out\n");
		ret = -ETIMEDOUT;
	}

	/*
	 * BOOT_DONE defaults to unmasked on boot so we must ack it.
	 * Do this even after a timeout to avoid interrupt storms.
	 */
	FUNC6(madera->regmap, MADERA_IRQ1_STATUS_1,
		     MADERA_BOOT_DONE_EINT1);

	FUNC4(madera->dev);

	return ret;
}