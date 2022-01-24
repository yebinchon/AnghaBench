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
struct saa7146_dev {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_ci {TYPE_1__ budget; int /*<<< orphan*/  slot_status; scalar_t__ ci_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUDGET_VIDEO_PORTB ; 
 int /*<<< orphan*/  CICONTROL_RESET ; 
 int /*<<< orphan*/  DEBIADDR_CICONTROL ; 
 int /*<<< orphan*/  DEBICICTL ; 
 int EINVAL ; 
 int /*<<< orphan*/  SAA7146_GPIO_IRQHI ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  SLOTSTATUS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dvb_ca_en50221 *ca, int slot)
{
	struct budget_ci *budget_ci = (struct budget_ci *) ca->data;
	struct saa7146_dev *saa = budget_ci->budget.dev;

	if (slot != 0)
		return -EINVAL;

	if (budget_ci->ci_irq) {
		// trigger on RISING edge during reset so we know when READY is re-asserted
		FUNC1(saa, 0, SAA7146_GPIO_IRQHI);
	}
	budget_ci->slot_status = SLOTSTATUS_RESET;
	FUNC2(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1, 0, 1, 0);
	FUNC0(1);
	FUNC2(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1,
			       CICONTROL_RESET, 1, 0);

	FUNC1(saa, 1, SAA7146_GPIO_OUTHI);
	FUNC3(saa, BUDGET_VIDEO_PORTB);
	return 0;
}