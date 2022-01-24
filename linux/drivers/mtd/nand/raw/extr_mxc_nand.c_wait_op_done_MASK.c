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
struct mxc_nand_host {int /*<<< orphan*/  dev; TYPE_1__* devtype_data; int /*<<< orphan*/  op_completion; } ;
struct TYPE_2__ {int (* check_int ) (struct mxc_nand_host*) ;} ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxc_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mxc_nand_host*) ; 
 int FUNC5 (struct mxc_nand_host*) ; 
 int FUNC6 (struct mxc_nand_host*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mxc_nand_host *host, int useirq)
{
	int ret = 0;

	/*
	 * If operation is already complete, don't bother to setup an irq or a
	 * loop.
	 */
	if (host->devtype_data->check_int(host))
		return 0;

	if (useirq) {
		unsigned long timeout;

		FUNC3(&host->op_completion);

		FUNC2(host, 1);

		timeout = FUNC8(&host->op_completion, HZ);
		if (!timeout && !host->devtype_data->check_int(host)) {
			FUNC1(host->dev, "timeout waiting for irq\n");
			ret = -ETIMEDOUT;
		}
	} else {
		int max_retries = 8000;
		int done;

		do {
			FUNC7(1);

			done = host->devtype_data->check_int(host);
			if (done)
				break;

		} while (--max_retries);

		if (!done) {
			FUNC1(host->dev, "timeout polling for completion\n");
			ret = -ETIMEDOUT;
		}
	}

	FUNC0(ret < 0, "timeout! useirq=%d\n", useirq);

	return ret;
}