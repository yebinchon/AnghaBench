#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cmd; } ;
struct cx18_in_work_order {int rpu; TYPE_1__ mb; } ;
struct cx18 {int dummy; } ;

/* Variables and functions */
#define  APU 131 
#define  CPU 130 
#define  CX18_EPU_DEBUG 129 
#define  CX18_EPU_DMA_DONE 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,struct cx18_in_work_order*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,struct cx18_in_work_order*) ; 

__attribute__((used)) static void FUNC3(struct cx18 *cx, struct cx18_in_work_order *order)
{
	switch (order->rpu) {
	case CPU:
	{
		switch (order->mb.cmd) {
		case CX18_EPU_DMA_DONE:
			FUNC2(cx, order);
			break;
		case CX18_EPU_DEBUG:
			FUNC1(cx, order);
			break;
		default:
			FUNC0("Unknown CPU to EPU mailbox command %#0x\n",
				  order->mb.cmd);
			break;
		}
		break;
	}
	case APU:
		FUNC0("Unknown APU to EPU mailbox command %#0x\n",
			  order->mb.cmd);
		break;
	default:
		break;
	}
}