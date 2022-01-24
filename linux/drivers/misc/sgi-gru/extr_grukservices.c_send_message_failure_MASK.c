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
struct gru_message_queue_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CBSS_AMO_NACKED 133 
#define  CBSS_LB_OVERFLOWED 132 
#define  CBSS_NO_ERROR 131 
#define  CBSS_PAGE_OVERFLOW 130 
#define  CBSS_PUT_NACKED 129 
#define  CBSS_QLIMIT_REACHED 128 
 int MQE_CONGESTION ; 
 int MQE_UNEXPECTED_CB_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  mesq_page_overflow ; 
 int /*<<< orphan*/  mesq_send_amo_nacked ; 
 int /*<<< orphan*/  mesq_send_lb_overflow ; 
 int /*<<< orphan*/  mesq_send_put_nacked ; 
 int /*<<< orphan*/  mesq_send_qlimit_reached ; 
 int /*<<< orphan*/  mesq_send_unexpected_error ; 
 int FUNC3 (void*,struct gru_message_queue_desc*,void*,int) ; 
 int FUNC4 (void*,struct gru_message_queue_desc*,void*,int) ; 

__attribute__((used)) static int FUNC5(void *cb, struct gru_message_queue_desc *mqd,
				void *mesg, int lines)
{
	int substatus, ret = 0;

	substatus = FUNC2(cb);
	switch (substatus) {
	case CBSS_NO_ERROR:
		FUNC1(mesq_send_unexpected_error);
		ret = MQE_UNEXPECTED_CB_ERR;
		break;
	case CBSS_LB_OVERFLOWED:
		FUNC1(mesq_send_lb_overflow);
		ret = MQE_CONGESTION;
		break;
	case CBSS_QLIMIT_REACHED:
		FUNC1(mesq_send_qlimit_reached);
		ret = FUNC4(cb, mqd, mesg, lines);
		break;
	case CBSS_AMO_NACKED:
		FUNC1(mesq_send_amo_nacked);
		ret = MQE_CONGESTION;
		break;
	case CBSS_PUT_NACKED:
		FUNC1(mesq_send_put_nacked);
		ret = FUNC3(cb, mqd, mesg, lines);
		break;
	case CBSS_PAGE_OVERFLOW:
		FUNC1(mesq_page_overflow);
		/* fall through */
	default:
		FUNC0();
	}
	return ret;
}