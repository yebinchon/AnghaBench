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
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dvb_frontend; scalar_t__ ci_present; } ;
struct budget_av {int has_saa7113; TYPE_1__ budget; int /*<<< orphan*/  vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7146_GPIO_OUTLO ; 
 int /*<<< orphan*/  FUNC0 (struct budget_av*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct budget_av*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct saa7146_dev*) ; 
 int FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct saa7146_dev *dev)
{
	struct budget_av *budget_av = (struct budget_av *) dev->ext_priv;
	int err;

	FUNC1(2, "dev: %p\n", dev);

	if (1 == budget_av->has_saa7113) {
		FUNC6(dev, 0, SAA7146_GPIO_OUTLO);

		FUNC5(200);

		FUNC7(&budget_av->vd, dev);

		FUNC8(dev);
	}

	if (budget_av->budget.ci_present)
		FUNC0(budget_av);

	if (budget_av->budget.dvb_frontend != NULL) {
		FUNC3(budget_av->budget.dvb_frontend);
		FUNC2(budget_av->budget.dvb_frontend);
	}
	err = FUNC9(&budget_av->budget);

	FUNC4(budget_av);

	return err;
}