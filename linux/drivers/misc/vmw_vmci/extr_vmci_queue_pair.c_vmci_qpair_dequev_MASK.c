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
struct vmci_qp {int /*<<< orphan*/  consume_q_size; int /*<<< orphan*/  consume_q; int /*<<< orphan*/  produce_q; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ VMCI_ERROR_INVALID_ARGS ; 
 scalar_t__ VMCI_ERROR_QUEUEPAIR_NOT_READY ; 
 scalar_t__ VMCI_ERROR_WOULD_BLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmci_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmci_qp*) ; 

ssize_t FUNC4(struct vmci_qp *qpair,
			  struct msghdr *msg,
			  size_t iov_size,
			  int buf_type)
{
	ssize_t result;

	if (!qpair)
		return VMCI_ERROR_INVALID_ARGS;

	FUNC1(qpair);

	do {
		result = FUNC0(qpair->produce_q,
					   qpair->consume_q,
					   qpair->consume_q_size,
					   &msg->msg_iter, true);

		if (result == VMCI_ERROR_QUEUEPAIR_NOT_READY &&
		    !FUNC3(qpair))
			result = VMCI_ERROR_WOULD_BLOCK;

	} while (result == VMCI_ERROR_QUEUEPAIR_NOT_READY);

	FUNC2(qpair);

	return result;
}