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
struct mxcmci_host {int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  MMC_REG_STATUS ; 
 int STATUS_ERR_MASK ; 
 int STATUS_TIME_OUT_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 int FUNC1 (struct mxcmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mxcmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mxcmci_host*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct mxcmci_host *host, u32 mask)
{
	u32 stat;
	unsigned long timeout = jiffies + HZ;

	do {
		stat = FUNC1(host, MMC_REG_STATUS);
		if (stat & STATUS_ERR_MASK)
			return stat;
		if (FUNC4(jiffies, timeout)) {
			FUNC3(host);
			FUNC2(host, host->clock);
			return STATUS_TIME_OUT_READ;
		}
		if (stat & mask)
			return 0;
		FUNC0();
	} while (1);
}