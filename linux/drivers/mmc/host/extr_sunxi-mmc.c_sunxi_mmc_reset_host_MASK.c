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
typedef  int u32 ;
struct sunxi_mmc_host {int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  REG_GCTRL ; 
 int SDXC_HARDWARE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sunxi_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sunxi_mmc_host*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct sunxi_mmc_host *host)
{
	unsigned long expire = jiffies + FUNC4(250);
	u32 rval;

	FUNC3(host, REG_GCTRL, SDXC_HARDWARE_RESET);
	do {
		rval = FUNC2(host, REG_GCTRL);
	} while (FUNC5(jiffies, expire) && (rval & SDXC_HARDWARE_RESET));

	if (rval & SDXC_HARDWARE_RESET) {
		FUNC0(FUNC1(host->mmc), "fatal err reset timeout\n");
		return -EIO;
	}

	return 0;
}