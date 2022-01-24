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
struct vmci_queue_header {int dummy; } ;
struct vmci_qp {int /*<<< orphan*/  consume_q_size; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ VMCI_ERROR_INVALID_ARGS ; 
 scalar_t__ VMCI_SUCCESS ; 
 scalar_t__ FUNC0 (struct vmci_qp const*,struct vmci_queue_header**,struct vmci_queue_header**) ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_qp const*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmci_qp const*) ; 
 scalar_t__ FUNC3 (struct vmci_queue_header*,struct vmci_queue_header*,int /*<<< orphan*/ ) ; 

s64 FUNC4(const struct vmci_qp *qpair)
{
	struct vmci_queue_header *produce_q_header;
	struct vmci_queue_header *consume_q_header;
	s64 result;

	if (!qpair)
		return VMCI_ERROR_INVALID_ARGS;

	FUNC1(qpair);
	result =
	    FUNC0(qpair, &produce_q_header, &consume_q_header);
	if (result == VMCI_SUCCESS)
		result = FUNC3(consume_q_header,
						 produce_q_header,
						 qpair->consume_q_size);
	else
		result = 0;

	FUNC2(qpair);

	return result;
}