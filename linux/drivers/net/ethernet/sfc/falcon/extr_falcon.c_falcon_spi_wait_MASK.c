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
struct ef4_nic {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ef4_nic *efx)
{
	/* Most commands will finish quickly, so we start polling at
	 * very short intervals.  Sometimes the command may have to
	 * wait for VPD or expansion ROM access outside of our
	 * control, so we allow up to 100 ms. */
	unsigned long timeout = jiffies + 1 + FUNC0(HZ, 10);
	int i;

	for (i = 0; i < 10; i++) {
		if (!FUNC1(efx))
			return 0;
		FUNC5(10);
	}

	for (;;) {
		if (!FUNC1(efx))
			return 0;
		if (FUNC4(jiffies, timeout)) {
			FUNC2(efx, hw, efx->net_dev,
				  "timed out waiting for SPI\n");
			return -ETIMEDOUT;
		}
		FUNC3(1);
	}
}