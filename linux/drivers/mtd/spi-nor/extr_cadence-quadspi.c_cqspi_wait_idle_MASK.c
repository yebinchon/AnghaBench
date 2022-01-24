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
struct cqspi_st {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQSPI_TIMEOUT_MS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct cqspi_st*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct cqspi_st *cqspi)
{
	const unsigned int poll_idle_retry = 3;
	unsigned int count = 0;
	unsigned long timeout;

	timeout = jiffies + FUNC3(CQSPI_TIMEOUT_MS);
	while (1) {
		/*
		 * Read few times in succession to ensure the controller
		 * is indeed idle, that is, the bit does not transition
		 * low again.
		 */
		if (FUNC1(cqspi))
			count++;
		else
			count = 0;

		if (count >= poll_idle_retry)
			return 0;

		if (FUNC4(jiffies, timeout)) {
			/* Timeout, in busy mode. */
			FUNC2(&cqspi->pdev->dev,
				"QSPI is still busy after %dms timeout.\n",
				CQSPI_TIMEOUT_MS);
			return -ETIMEDOUT;
		}

		FUNC0();
	}
}