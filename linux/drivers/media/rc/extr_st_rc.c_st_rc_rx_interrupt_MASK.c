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
typedef  int u32 ;
struct st_rc_device {unsigned int sample_mult; unsigned int sample_div; int /*<<< orphan*/  rdev; scalar_t__ rx_base; scalar_t__ overclocking; int /*<<< orphan*/  dev; scalar_t__ irq_wake; } ;
struct ir_raw_event {int pulse; void* duration; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IRB_FIFO_NOT_EMPTY ; 
 int IRB_OVERFLOW ; 
 int IRB_RX_INTS ; 
 scalar_t__ IRB_RX_INT_CLEAR ; 
 scalar_t__ IRB_RX_INT_STATUS ; 
 scalar_t__ IRB_RX_ON ; 
 int IRB_RX_OVERRUN_INT ; 
 scalar_t__ IRB_RX_STATUS ; 
 scalar_t__ IRB_RX_SYS ; 
 unsigned int IRB_TIMEOUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned long) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *data)
{
	unsigned long timeout;
	unsigned int symbol, mark = 0;
	struct st_rc_device *dev = data;
	int last_symbol = 0;
	u32 status, int_status;
	struct ir_raw_event ev = {};

	if (dev->irq_wake)
		FUNC6(dev->dev, 0);

	/* FIXME: is 10ms good enough ? */
	timeout = jiffies +  FUNC5(10);
	do {
		status  = FUNC7(dev->rx_base + IRB_RX_STATUS);
		if (!(status & (IRB_FIFO_NOT_EMPTY | IRB_OVERFLOW)))
			break;

		int_status = FUNC7(dev->rx_base + IRB_RX_INT_STATUS);
		if (FUNC10(int_status & IRB_RX_OVERRUN_INT)) {
			/* discard the entire collection in case of errors!  */
			FUNC3(dev->rdev);
			FUNC1(dev->dev, "IR RX overrun\n");
			FUNC11(IRB_RX_OVERRUN_INT,
					dev->rx_base + IRB_RX_INT_CLEAR);
			continue;
		}

		symbol = FUNC7(dev->rx_base + IRB_RX_SYS);
		mark = FUNC7(dev->rx_base + IRB_RX_ON);

		if (symbol == IRB_TIMEOUT)
			last_symbol = 1;

		 /* Ignore any noise */
		if ((mark > 2) && (symbol > 1)) {
			symbol -= mark;
			if (dev->overclocking) { /* adjustments to timings */
				symbol *= dev->sample_mult;
				symbol /= dev->sample_div;
				mark *= dev->sample_mult;
				mark /= dev->sample_div;
			}

			ev.duration = FUNC0(mark);
			ev.pulse = true;
			FUNC4(dev->rdev, &ev);

			if (!last_symbol) {
				ev.duration = FUNC0(symbol);
				ev.pulse = false;
				FUNC4(dev->rdev, &ev);
			} else  {
				FUNC8(dev->rdev);
			}

		}
		last_symbol = 0;
	} while (FUNC9(timeout));

	FUNC11(IRB_RX_INTS, dev->rx_base + IRB_RX_INT_CLEAR);

	/* Empty software fifo */
	FUNC2(dev->rdev);
	return IRQ_HANDLED;
}