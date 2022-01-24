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
struct cosa_data {int /*<<< orphan*/  name; int /*<<< orphan*/  num; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int SR_CMD_FROM_SRP_MASK ; 
#define  SR_DOWN_REQUEST 130 
#define  SR_END_OF_TRANSFER 129 
#define  SR_UP_REQUEST 128 
 unsigned int FUNC0 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct cosa_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cosa_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct cosa_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct cosa_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *cosa_)
{
	unsigned status;
	int count = 0;
	struct cosa_data *cosa = cosa_;
again:
	status = FUNC0(cosa);
#ifdef DEBUG_IRQS
	pr_info("cosa%d: got IRQ, status 0x%02x\n", cosa->num, status & 0xff);
#endif
#ifdef DEBUG_IO
	debug_status_in(cosa, status);
#endif
	switch (status & SR_CMD_FROM_SRP_MASK) {
	case SR_DOWN_REQUEST:
		FUNC5(cosa, status);
		break;
	case SR_UP_REQUEST:
		FUNC4(cosa, status);
		break;
	case SR_END_OF_TRANSFER:
		FUNC2(cosa, status);
		break;
	default:
		/* We may be too fast for SRP. Try to wait a bit more. */
		if (count++ < 100) {
			FUNC6(100);
			goto again;
		}
		FUNC3("cosa%d: unknown status 0x%02x in IRQ after %d retries\n",
			cosa->num, status & 0xff, count);
	}
#ifdef DEBUG_IRQS
	if (count)
		pr_info("%s: %d-times got unknown status in IRQ\n",
			cosa->name, count);
	else
		pr_info("%s: returning from IRQ\n", cosa->name);
#endif
	return IRQ_HANDLED;
}