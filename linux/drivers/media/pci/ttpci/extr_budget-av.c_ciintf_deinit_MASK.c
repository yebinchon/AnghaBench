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
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_av {int /*<<< orphan*/  ca; TYPE_1__ budget; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASK_27 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  SAA7146_GPIO_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct budget_av *budget_av)
{
	struct saa7146_dev *saa = budget_av->budget.dev;

	FUNC1(saa, 0, SAA7146_GPIO_INPUT);
	FUNC1(saa, 1, SAA7146_GPIO_INPUT);
	FUNC1(saa, 2, SAA7146_GPIO_INPUT);
	FUNC1(saa, 3, SAA7146_GPIO_INPUT);

	/* release the CA device */
	FUNC0(&budget_av->ca);

	/* disable DEBI pins */
	FUNC2(saa, MC1, MASK_27);
}