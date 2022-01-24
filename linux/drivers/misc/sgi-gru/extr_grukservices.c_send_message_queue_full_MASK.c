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
union gru_mesqhead {int /*<<< orphan*/  val; } ;
struct gru_message_queue_desc {int qlines; int /*<<< orphan*/  mq_gpa; } ;

/* Variables and functions */
 scalar_t__ CBS_IDLE ; 
 int /*<<< orphan*/  EOP_ERR_CSWAP ; 
 int /*<<< orphan*/  EOP_IR_CLR ; 
 int /*<<< orphan*/  EOP_IR_INC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IMA ; 
 int MQE_QUEUE_FULL ; 
 int MQE_UNEXPECTED_CB_ERR ; 
 int MQIE_AGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XTYPE_DW ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (void*) ; 
 unsigned int FUNC5 (void*) ; 
 unsigned int FUNC6 (void*) ; 
 union gru_mesqhead FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  mesq_qf_locked ; 
 int /*<<< orphan*/  mesq_qf_noop_not_full ; 
 int /*<<< orphan*/  mesq_qf_switch_head_failed ; 
 int /*<<< orphan*/  mesq_qf_unexpected_error ; 
 scalar_t__ FUNC9 (void*,struct gru_message_queue_desc*,void*) ; 

__attribute__((used)) static int FUNC10(void *cb, struct gru_message_queue_desc *mqd,
				void *mesg, int lines)
{
	union gru_mesqhead mqh;
	unsigned int limit, head;
	unsigned long avalue;
	int half, qlines;

	/* Determine if switching to first/second half of q */
	avalue = FUNC4(cb);
	head = FUNC5(cb);
	limit = FUNC6(cb);

	qlines = mqd->qlines;
	half = (limit != qlines);

	if (half)
		mqh = FUNC7(qlines / 2 + 1, qlines);
	else
		mqh = FUNC7(2, qlines / 2 + 1);

	/* Try to get lock for switching head pointer */
	FUNC3(cb, EOP_IR_CLR, FUNC0(mqd->mq_gpa, half), XTYPE_DW, IMA);
	if (FUNC8(cb) != CBS_IDLE)
		goto cberr;
	if (!FUNC4(cb)) {
		FUNC1(mesq_qf_locked);
		return MQE_QUEUE_FULL;
	}

	/* Got the lock. Send optional NOP if queue not full, */
	if (head != limit) {
		if (FUNC9(cb, mqd, mesg)) {
			FUNC3(cb, EOP_IR_INC, FUNC0(mqd->mq_gpa, half),
					XTYPE_DW, IMA);
			if (FUNC8(cb) != CBS_IDLE)
				goto cberr;
			FUNC1(mesq_qf_noop_not_full);
			return MQIE_AGAIN;
		}
		avalue++;
	}

	/* Then flip queuehead to other half of queue. */
	FUNC2(cb, EOP_ERR_CSWAP, mqd->mq_gpa, XTYPE_DW, mqh.val, avalue,
							IMA);
	if (FUNC8(cb) != CBS_IDLE)
		goto cberr;

	/* If not successfully in swapping queue head, clear the hstatus lock */
	if (FUNC4(cb) != avalue) {
		FUNC1(mesq_qf_switch_head_failed);
		FUNC3(cb, EOP_IR_INC, FUNC0(mqd->mq_gpa, half), XTYPE_DW,
							IMA);
		if (FUNC8(cb) != CBS_IDLE)
			goto cberr;
	}
	return MQIE_AGAIN;
cberr:
	FUNC1(mesq_qf_unexpected_error);
	return MQE_UNEXPECTED_CB_ERR;
}