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
typedef  int /*<<< orphan*/  u16 ;
struct hinic_qp_ctxt_header {int queue_type; int /*<<< orphan*/  addr_offset; int /*<<< orphan*/  num_queues; } ;
typedef  enum hinic_qp_ctxt_type { ____Placeholder_hinic_qp_ctxt_type } hinic_qp_ctxt_type ;

/* Variables and functions */
 int HINIC_QP_CTXT_TYPE_SQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_qp_ctxt_header*,int) ; 

void FUNC4(struct hinic_qp_ctxt_header *qp_ctxt_hdr,
			     enum hinic_qp_ctxt_type ctxt_type,
			     u16 num_queues, u16 max_queues)
{
	u16 max_sqs = max_queues;
	u16 max_rqs = max_queues;

	qp_ctxt_hdr->num_queues = num_queues;
	qp_ctxt_hdr->queue_type = ctxt_type;

	if (ctxt_type == HINIC_QP_CTXT_TYPE_SQ)
		qp_ctxt_hdr->addr_offset = FUNC2(max_sqs, max_rqs, 0);
	else
		qp_ctxt_hdr->addr_offset = FUNC0(max_sqs, max_rqs, 0);

	qp_ctxt_hdr->addr_offset = FUNC1(qp_ctxt_hdr->addr_offset);

	FUNC3(qp_ctxt_hdr, sizeof(*qp_ctxt_hdr));
}