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
typedef  int u8 ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct budget_av {TYPE_1__ budget; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBICICAM ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTLO ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_ca_en50221*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dvb_ca_en50221 *ca, int slot, u8 address, u8 value)
{
	struct budget_av *budget_av = (struct budget_av *) ca->data;
	int result;

	if (slot != 0)
		return -EINVAL;

	FUNC2(budget_av->budget.dev, 1, SAA7146_GPIO_OUTLO);
	FUNC4(1);

	result = FUNC3(&budget_av->budget, DEBICICAM, address & 3, 1, value, 0, 0);
	if (result == -ETIMEDOUT) {
		FUNC0(ca, slot);
		FUNC1("cam ejected 5\n");
	}
	return result;
}