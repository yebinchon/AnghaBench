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
struct i40e_pf {int /*<<< orphan*/  state; TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __I40E_BAD_EEPROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct i40e_pf *pf)
{
	int err;

	err = FUNC2(&pf->hw);
	if (err) {
		/* retry in case of garbage read */
		err = FUNC2(&pf->hw);
		if (err) {
			FUNC1(&pf->pdev->dev, "eeprom check failed (%d), Tx/Rx traffic disabled\n",
				 err);
			FUNC3(__I40E_BAD_EEPROM, pf->state);
		}
	}

	if (!err && FUNC4(__I40E_BAD_EEPROM, pf->state)) {
		FUNC1(&pf->pdev->dev, "eeprom check passed, Tx/Rx traffic enabled\n");
		FUNC0(__I40E_BAD_EEPROM, pf->state);
	}
}