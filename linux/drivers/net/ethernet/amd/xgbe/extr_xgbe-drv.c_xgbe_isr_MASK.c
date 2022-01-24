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
struct xgbe_prv_data {int /*<<< orphan*/  tasklet_dev; scalar_t__ isr_as_tasklet; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct xgbe_prv_data *pdata = data;

	if (pdata->isr_as_tasklet)
		FUNC0(&pdata->tasklet_dev);
	else
		FUNC1((unsigned long)pdata);

	return IRQ_HANDLED;
}