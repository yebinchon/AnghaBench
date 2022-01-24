#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wait; } ;
struct TYPE_6__ {TYPE_2__ wq; TYPE_1__* sk; } ;
struct tun_file {TYPE_3__ socket; int /*<<< orphan*/  tx_ring; } ;
struct TYPE_4__ {int sk_shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EFAULT ; 
 int ERESTARTSYS ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void *FUNC8(struct tun_file *tfile, int noblock, int *err)
{
	FUNC0(wait, current);
	void *ptr = NULL;
	int error = 0;

	ptr = FUNC3(&tfile->tx_ring);
	if (ptr)
		goto out;
	if (noblock) {
		error = -EAGAIN;
		goto out;
	}

	FUNC2(&tfile->socket.wq.wait, &wait);

	while (1) {
		FUNC6(TASK_INTERRUPTIBLE);
		ptr = FUNC3(&tfile->tx_ring);
		if (ptr)
			break;
		if (FUNC7(current)) {
			error = -ERESTARTSYS;
			break;
		}
		if (tfile->socket.sk->sk_shutdown & RCV_SHUTDOWN) {
			error = -EFAULT;
			break;
		}

		FUNC5();
	}

	FUNC1(TASK_RUNNING);
	FUNC4(&tfile->socket.wq.wait, &wait);

out:
	*err = error;
	return ptr;
}