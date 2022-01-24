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
struct lis3lv02d {scalar_t__ irq_cfg; int /*<<< orphan*/  idev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_LINE1 ; 
 scalar_t__ LIS3_IRQ2_CLICK ; 
 scalar_t__ LIS3_IRQ2_DATA_READY ; 
 scalar_t__ LIS3_IRQ2_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct lis3lv02d*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lis3lv02d*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct lis3lv02d *lis3 = data;
	u8 irq_cfg = lis3->irq_cfg & LIS3_IRQ2_MASK;

	if (irq_cfg == LIS3_IRQ2_CLICK)
		FUNC1(lis3);
	else if (FUNC3(irq_cfg == LIS3_IRQ2_DATA_READY))
		FUNC0(lis3, IRQ_LINE1);
	else
		FUNC2(lis3->idev);

	return IRQ_HANDLED;
}