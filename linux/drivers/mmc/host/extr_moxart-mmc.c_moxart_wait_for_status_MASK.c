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
typedef  scalar_t__ u32 ;
struct moxart_host {int /*<<< orphan*/  mmc; scalar_t__ base; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ MAX_RETRIES ; 
 scalar_t__ REG_CLEAR ; 
 scalar_t__ REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct moxart_host *host,
				  u32 mask, u32 *status)
{
	int ret = -ETIMEDOUT;
	u32 i;

	for (i = 0; i < MAX_RETRIES; i++) {
		*status = FUNC2(host->base + REG_STATUS);
		if (!(*status & mask)) {
			FUNC3(5);
			continue;
		}
		FUNC4(*status & mask, host->base + REG_CLEAR);
		ret = 0;
		break;
	}

	if (ret)
		FUNC0(FUNC1(host->mmc), "timed out waiting for status\n");

	return ret;
}