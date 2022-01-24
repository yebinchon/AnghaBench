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
struct TYPE_2__ {int /*<<< orphan*/  dvb_frontend; struct saa7146_dev* dev; } ;
struct budget_av {TYPE_1__ budget; scalar_t__ reinitialise_demod; int /*<<< orphan*/  slot_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUDGET_VIDEO_PORTB ; 
 int EINVAL ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTLO ; 
 int /*<<< orphan*/  SLOTSTATUS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dvb_ca_en50221 *ca, int slot)
{
	struct budget_av *budget_av = (struct budget_av *) ca->data;
	struct saa7146_dev *saa = budget_av->budget.dev;

	if (slot != 0)
		return -EINVAL;

	FUNC0(1, "ciintf_slot_reset\n");
	budget_av->slot_status = SLOTSTATUS_RESET;

	FUNC3(saa, 2, SAA7146_GPIO_OUTHI); /* disable card */

	FUNC3(saa, 0, SAA7146_GPIO_OUTHI); /* Vcc off */
	FUNC2(2);
	FUNC3(saa, 0, SAA7146_GPIO_OUTLO); /* Vcc on */
	FUNC2(20); /* 20 ms Vcc settling time */

	FUNC3(saa, 2, SAA7146_GPIO_OUTLO); /* enable card */
	FUNC4(saa, BUDGET_VIDEO_PORTB);
	FUNC2(20);

	/* reinitialise the frontend if necessary */
	if (budget_av->reinitialise_demod)
		FUNC1(budget_av->budget.dvb_frontend);

	return 0;
}