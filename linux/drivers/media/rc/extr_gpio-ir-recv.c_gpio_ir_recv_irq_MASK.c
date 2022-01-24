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
struct gpio_rc_dev {int /*<<< orphan*/  rcdev; int /*<<< orphan*/  gpiod; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	int val;
	struct gpio_rc_dev *gpio_dev = dev_id;

	val = FUNC0(gpio_dev->gpiod);
	if (val >= 0)
		FUNC1(gpio_dev->rcdev, val == 1);

	return IRQ_HANDLED;
}