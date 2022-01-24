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
typedef  unsigned int uint32_t ;
struct jz4740_mmc_host {int /*<<< orphan*/  timeout_timer; int /*<<< orphan*/  waiting; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 unsigned int FUNC0 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4740_mmc_host*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC4(struct jz4740_mmc_host *host,
	unsigned int irq)
{
	unsigned int timeout = 0x800;
	uint32_t status;

	do {
		status = FUNC0(host);
	} while (!(status & irq) && --timeout);

	if (timeout == 0) {
		FUNC3(0, &host->waiting);
		FUNC2(&host->timeout_timer, jiffies + 5*HZ);
		FUNC1(host, irq, true);
		return true;
	}

	return false;
}