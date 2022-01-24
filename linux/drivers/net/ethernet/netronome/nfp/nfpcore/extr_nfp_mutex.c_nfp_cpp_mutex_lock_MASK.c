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
struct nfp_cpp_mutex {int /*<<< orphan*/  cpp; int /*<<< orphan*/  key; int /*<<< orphan*/  address; int /*<<< orphan*/  target; int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 unsigned long HZ ; 
 unsigned long NFP_MUTEX_WAIT_ERROR ; 
 unsigned long NFP_MUTEX_WAIT_FIRST_WARN ; 
 unsigned long NFP_MUTEX_WAIT_NEXT_WARN ; 
 unsigned long jiffies ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct nfp_cpp_mutex*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long) ; 

int FUNC6(struct nfp_cpp_mutex *mutex)
{
	unsigned long warn_at = jiffies + NFP_MUTEX_WAIT_FIRST_WARN * HZ;
	unsigned long err_at = jiffies + NFP_MUTEX_WAIT_ERROR * HZ;
	unsigned int timeout_ms = 1;
	int err;

	/* We can't use a waitqueue here, because the unlocker
	 * might be on a separate CPU.
	 *
	 * So just wait for now.
	 */
	for (;;) {
		err = FUNC1(mutex);
		if (err != -EBUSY)
			break;

		err = FUNC0(timeout_ms);
		if (err != 0) {
			FUNC3(mutex->cpp,
				 "interrupted waiting for NFP mutex\n");
			return -ERESTARTSYS;
		}

		if (FUNC5(warn_at)) {
			warn_at = jiffies + NFP_MUTEX_WAIT_NEXT_WARN * HZ;
			FUNC4(mutex->cpp,
				 "Warning: waiting for NFP mutex [depth:%hd target:%d addr:%llx key:%08x]\n",
				 mutex->depth,
				 mutex->target, mutex->address, mutex->key);
		}
		if (FUNC5(err_at)) {
			FUNC2(mutex->cpp, "Error: mutex wait timed out\n");
			return -EBUSY;
		}
	}

	return err;
}