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
struct mv88e6xxx_chip {struct gpio_desc* reset; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct mv88e6xxx_chip *chip)
{
	struct gpio_desc *gpiod = chip->reset;

	/* If there is a GPIO connected to the reset pin, toggle it */
	if (gpiod) {
		FUNC0(gpiod, 1);
		FUNC1(10000, 20000);
		FUNC0(gpiod, 0);
		FUNC1(10000, 20000);
	}
}