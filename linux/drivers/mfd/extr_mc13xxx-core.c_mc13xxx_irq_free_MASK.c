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
struct mc13xxx {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(struct mc13xxx *mc13xxx, int irq, void *dev)
{
	int virq = FUNC1(mc13xxx->irq_data, irq);

	FUNC0(mc13xxx->dev, virq, dev);

	return 0;
}