#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_8__ {int signal_pin_change; int signal_pin; } ;
struct TYPE_7__ {int /*<<< orphan*/  timeout; } ;
struct TYPE_6__ {TYPE_3__* rcdev; int /*<<< orphan*/  timeout_timer; int /*<<< orphan*/  lastkt; TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int IR_MAX_DURATION ; 
 int RS_ISR_PASS_LIMIT ; 
 int /*<<< orphan*/  UART_IIR ; 
 int UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_MSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 TYPE_4__* hardware ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int sense ; 
 TYPE_2__ serial_ir ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 size_t type ; 

__attribute__((used)) static irqreturn_t FUNC11(int i, void *blah)
{
	ktime_t kt;
	int counter, dcd;
	u8 status;
	ktime_t delkt;
	unsigned int data;
	static int last_dcd = -1;

	if ((FUNC10(UART_IIR) & UART_IIR_NO_INT)) {
		/* not our interrupt */
		return IRQ_NONE;
	}

	counter = 0;
	do {
		counter++;
		status = FUNC10(UART_MSR);
		if (counter > RS_ISR_PASS_LIMIT) {
			FUNC0(&serial_ir.pdev->dev, "Trapped in interrupt");
			break;
		}
		if ((status & hardware[type].signal_pin_change) &&
		    sense != -1) {
			/* get current time */
			kt = FUNC4();

			/*
			 * The driver needs to know if your receiver is
			 * active high or active low, or the space/pulse
			 * sense could be inverted.
			 */

			/* calc time since last interrupt in nanoseconds */
			dcd = (status & hardware[type].signal_pin) ? 1 : 0;

			if (dcd == last_dcd) {
				FUNC0(&serial_ir.pdev->dev,
					"ignoring spike: %d %d %lldns %lldns\n",
					dcd, sense, FUNC7(kt),
					FUNC7(serial_ir.lastkt));
				continue;
			}

			delkt = FUNC6(kt, serial_ir.lastkt);
			if (FUNC3(delkt, FUNC5(15, 0)) > 0) {
				data = IR_MAX_DURATION; /* really long time */
				if (!(dcd ^ sense)) {
					/* sanity check */
					FUNC0(&serial_ir.pdev->dev,
						"dcd unexpected: %d %d %lldns %lldns\n",
						dcd, sense, FUNC7(kt),
						FUNC7(serial_ir.lastkt));
					/*
					 * detecting pulse while this
					 * MUST be a space!
					 */
					sense = sense ? 0 : 1;
				}
			} else {
				data = FUNC7(delkt);
			}
			FUNC1(data, !(dcd ^ sense));
			serial_ir.lastkt = kt;
			last_dcd = dcd;
		}
	} while (!(FUNC10(UART_IIR) & UART_IIR_NO_INT)); /* still pending ? */

	FUNC8(&serial_ir.timeout_timer,
		  jiffies + FUNC9(serial_ir.rcdev->timeout));

	FUNC2(serial_ir.rcdev);

	return IRQ_HANDLED;
}