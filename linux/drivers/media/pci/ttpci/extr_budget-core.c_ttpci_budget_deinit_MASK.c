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
struct saa7146_dev {int /*<<< orphan*/  pci; } ;
struct budget {int /*<<< orphan*/  dvb_adapter; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  pt; int /*<<< orphan*/  grabbing; int /*<<< orphan*/  vpe_tasklet; struct saa7146_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct budget*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct budget*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct budget *budget)
{
	struct saa7146_dev *dev = budget->dev;

	FUNC1(2, "budget: %p\n", budget);

	FUNC0(budget);

	FUNC5(&budget->vpe_tasklet);

	FUNC4(dev->pci, budget->grabbing, &budget->pt);

	FUNC3(&budget->i2c_adap);

	FUNC2(&budget->dvb_adapter);

	return 0;
}