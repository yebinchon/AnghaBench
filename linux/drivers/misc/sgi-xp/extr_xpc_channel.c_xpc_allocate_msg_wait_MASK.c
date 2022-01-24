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
struct xpc_channel {int flags; scalar_t__ reason; int /*<<< orphan*/  n_on_msg_allocate_wq; int /*<<< orphan*/  msg_allocate_wq; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int XPC_C_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  wait ; 
 scalar_t__ xpInterrupted ; 
 int xpTimeout ; 

enum xp_retval
FUNC7(struct xpc_channel *ch)
{
	enum xp_retval ret;
	FUNC1(wait);

	if (ch->flags & XPC_C_DISCONNECTING) {
		FUNC0(ch->reason == xpInterrupted);
		return ch->reason;
	}

	FUNC3(&ch->n_on_msg_allocate_wq);
	FUNC5(&ch->msg_allocate_wq, &wait, TASK_INTERRUPTIBLE);
	ret = FUNC6(1);
	FUNC4(&ch->msg_allocate_wq, &wait);
	FUNC2(&ch->n_on_msg_allocate_wq);

	if (ch->flags & XPC_C_DISCONNECTING) {
		ret = ch->reason;
		FUNC0(ch->reason == xpInterrupted);
	} else if (ret == 0) {
		ret = xpTimeout;
	} else {
		ret = xpInterrupted;
	}

	return ret;
}