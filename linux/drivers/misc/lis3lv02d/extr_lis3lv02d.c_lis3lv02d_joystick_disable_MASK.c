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
struct lis3lv02d {int /*<<< orphan*/ * idev; int /*<<< orphan*/  miscdev; scalar_t__ irq; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ irq2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct lis3lv02d*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct lis3lv02d *lis3)
{
	if (lis3->irq)
		FUNC0(lis3->irq, lis3);
	if (lis3->pdata && lis3->pdata->irq2)
		FUNC0(lis3->pdata->irq2, lis3);

	if (!lis3->idev)
		return;

	if (lis3->irq)
		FUNC3(&lis3->miscdev);
	FUNC2(lis3->idev);
	FUNC1(lis3->idev);
	lis3->idev = NULL;
}