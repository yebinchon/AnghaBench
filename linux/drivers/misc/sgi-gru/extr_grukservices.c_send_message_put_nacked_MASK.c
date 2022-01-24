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
struct gru_message_queue_desc {int mq_gpa; int /*<<< orphan*/  interrupt_vector; } ;

/* Variables and functions */
 scalar_t__ CBS_IDLE ; 
 int /*<<< orphan*/  IMA ; 
 int MQE_CONGESTION ; 
 int MQE_OK ; 
 int MQE_UNEXPECTED_CB_ERR ; 
 int MQIE_AGAIN ; 
 int /*<<< orphan*/  XTYPE_CL ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void*) ; 
 int FUNC5 (void*,struct gru_message_queue_desc*,void*) ; 

__attribute__((used)) static int FUNC6(void *cb, struct gru_message_queue_desc *mqd,
			void *mesg, int lines)
{
	unsigned long m;
	int ret, loops = 200;	/* experimentally determined */

	m = mqd->mq_gpa + (FUNC0(cb) << 6);
	if (lines == 2) {
		FUNC2(cb, m, 0, XTYPE_CL, lines, 1, IMA);
		if (FUNC4(cb) != CBS_IDLE)
			return MQE_UNEXPECTED_CB_ERR;
	}
	FUNC3(cb, m, FUNC1(mesg), XTYPE_CL, lines, 1, IMA);
	if (FUNC4(cb) != CBS_IDLE)
		return MQE_UNEXPECTED_CB_ERR;

	if (!mqd->interrupt_vector)
		return MQE_OK;

	/*
	 * Send a noop message in order to deliver a cross-partition interrupt
	 * to the SSI that contains the target message queue. Normally, the
	 * interrupt is automatically delivered by hardware following mesq
	 * operations, but some error conditions require explicit delivery.
	 * The noop message will trigger delivery. Otherwise partition failures
	 * could cause unrecovered errors.
	 */
	do {
		ret = FUNC5(cb, mqd, mesg);
	} while ((ret == MQIE_AGAIN || ret == MQE_CONGESTION) && (loops-- > 0));

	if (ret == MQIE_AGAIN || ret == MQE_CONGESTION) {
		/*
		 * Don't indicate to the app to resend the message, as it's
		 * already been successfully sent.  We simply send an OK
		 * (rather than fail the send with MQE_UNEXPECTED_CB_ERR),
		 * assuming that the other side is receiving enough
		 * interrupts to get this message processed anyway.
		 */
		ret = MQE_OK;
	}
	return ret;
}