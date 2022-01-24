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
struct docg3 {int dummy; } ;

/* Variables and functions */
 int DOC_PLANES_STATUS_FAIL ; 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct docg3 *docg3)
{
	int i, status, ret = 0;

	for (i = 0; !FUNC2(docg3) && i < 5; i++)
		FUNC4(20);
	if (!FUNC2(docg3)) {
		FUNC0("Timeout reached and the chip is still not ready\n");
		ret = -EAGAIN;
		goto out;
	}

	status = FUNC1(docg3);
	if (status & DOC_PLANES_STATUS_FAIL) {
		FUNC0("Erase/Write failed on (a) plane(s), status = %x\n",
			status);
		ret = -EIO;
	}

out:
	FUNC3(docg3);
	return ret;
}