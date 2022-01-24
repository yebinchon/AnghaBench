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
struct nfp_nsp {int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 unsigned long HZ ; 
 unsigned long NFP_NSP_TIMEOUT_BOOT ; 
 int /*<<< orphan*/  SPCODE_NOOP ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct nfp_nsp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long const,unsigned long const) ; 

int FUNC5(struct nfp_nsp *state)
{
	const unsigned long wait_until = jiffies + NFP_NSP_TIMEOUT_BOOT * HZ;
	int err;

	FUNC1(state->cpp, "Waiting for NSP to respond (%u sec max).\n",
		NFP_NSP_TIMEOUT_BOOT);

	for (;;) {
		const unsigned long start_time = jiffies;

		err = FUNC3(state, SPCODE_NOOP);
		if (err != -EAGAIN)
			break;

		if (FUNC0(25)) {
			err = -ERESTARTSYS;
			break;
		}

		if (FUNC4(start_time, wait_until)) {
			err = -ETIMEDOUT;
			break;
		}
	}
	if (err)
		FUNC2(state->cpp, "NSP failed to respond %d\n", err);

	return err;
}