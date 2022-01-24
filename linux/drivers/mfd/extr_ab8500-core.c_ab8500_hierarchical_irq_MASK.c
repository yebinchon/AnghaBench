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
typedef  scalar_t__ u8 ;
struct ab8500 {scalar_t__ it_latchhier_num; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_INTERRUPT ; 
 scalar_t__ AB8500_IT_LATCHHIER1_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct ab8500*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ab8500*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev)
{
	struct ab8500 *ab8500 = dev;
	u8 i;

	FUNC1(ab8500->dev, "interrupt\n");

	/*  Hierarchical interrupt version */
	for (i = 0; i < (ab8500->it_latchhier_num); i++) {
		int status;
		u8 hier_val;

		status = FUNC2(ab8500, AB8500_INTERRUPT,
			AB8500_IT_LATCHHIER1_REG + i, &hier_val);
		if (status < 0 || hier_val == 0)
			continue;

		status = FUNC0(ab8500, i, hier_val);
		if (status < 0)
			break;
	}
	return IRQ_HANDLED;
}