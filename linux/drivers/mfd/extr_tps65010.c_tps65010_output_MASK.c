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
struct tps65010 {int outmask; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  ON ; 
 struct tps65010* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct gpio_chip *chip, unsigned offset, int value)
{
	/* GPIOs may be input-only */
	if (offset < 4) {
		struct tps65010		*tps;

		tps = FUNC0(chip);
		if (!(tps->outmask & (1 << offset)))
			return -EINVAL;
		FUNC1(offset + 1, value);
	} else if (offset < 6)
		FUNC2(offset - 3, value ? ON : OFF);
	else
		FUNC3(value);

	return 0;
}