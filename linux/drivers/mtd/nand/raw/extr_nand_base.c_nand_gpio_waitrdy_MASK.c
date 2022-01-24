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
struct nand_chip {int dummy; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

int FUNC4(struct nand_chip *chip, struct gpio_desc *gpiod,
		      unsigned long timeout_ms)
{
	/* Wait until R/B pin indicates chip is ready or timeout occurs */
	timeout_ms = jiffies + FUNC2(timeout_ms);
	do {
		if (FUNC1(gpiod))
			return 0;

		FUNC0();
	} while	(FUNC3(jiffies, timeout_ms));

	return FUNC1(gpiod) ? 0 : -ETIMEDOUT;
}